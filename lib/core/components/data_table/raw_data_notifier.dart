
import 'package:apparence_kit/core/components/data_table/raw_data_models.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'raw_data_notifier.g.dart';

class RawDataProviderArgs {
  final String tableName;
  final String orderBy;
  final bool orderAscending;
  final List<RawDataFilter>? filters;
  final List<Field> fields;

  RawDataProviderArgs({
    required this.tableName, 
    required this.fields,
    required this.orderBy,
    this.filters,
    this.orderAscending = true,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RawDataProviderArgs &&
        other.tableName == tableName &&
        listEquals(other.fields, fields);
  }

  @override
  int get hashCode => tableName.hashCode ^ fields.hashCode;
}


const kPageSize = 25;

@Riverpod(keepAlive: true)
class RawDataNotifier extends _$RawDataNotifier {
  @override
  Future<RawDataState> build(RawDataProviderArgs args) async {
    return _load(0);
  }

  Future<void> loadNextPage() async {
    final newState = await _load(state.value!.page + 1);
    state = AsyncData(newState);
  }

  Future<void> loadPreviousPage() async {
    if(!state.value!.canGoPreviousPage) {
      return;
    }
    final newState = await _load(state.value!.page - 1);
    state = AsyncData(newState);
  }

  Future<void> refresh() async {
    final newState = await _load(state.value!.page);
    state = AsyncData(newState);
  }

  Future<void> search({
    required String? query,
    required String? column,
  }) async {
    debugPrint("search: $query -- $column");
    if (query == null || column == null) {
      return;
    }
    var newState = state.value!.copyWith(
      filters: [
        RawDataFilter(
          column: column,
          operator: 'eq',
          value: query,
        ),
      ],
    );
    state = AsyncData(newState);
    newState = await _load(0);
    state = AsyncData(newState);
  }

  Future<void> clearSearch() async {
    var newState = state.value!.copyWith(filters: null);
    state = AsyncData(newState);
    newState = await _load(0);
    state = AsyncData(newState);
  }

  Future<RawDataState> _load(int page) async {
    var query = Supabase.instance.client
      .from(args.tableName)
      .select();
    if (state.value?.filters != null) {
      for (final filter in state.value!.filters!) {
        query = query.filter(filter.column, filter.operator, filter.value);
      }
    }
    if (args.filters != null) {
      for (final filter in args.filters!) {
        query = query.filter(filter.column, filter.operator, filter.value);
      }
    }
    final res = await query
      .range(page * kPageSize, (page + 1) * kPageSize - 1)
      .order(args.orderBy, ascending: args.orderAscending)
      .limit(25);
    if (res.isEmpty) {
      return RawDataState(
        data: [],
        page: page,
        pageSize: kPageSize,
      );
    }

    final List<List<FieldValue>> rows = [];
    for (final row in res) {
      final List<FieldValue> fields = [];
      rows.add(fields);
      for (int i = 0; i < args.fields.length; i++) {
        final field = args.fields[i];
        final parsedValue = row.containsKey(field.name) ? row[field.name].toString() : null;
        // debugPrint("field: ${args.fields[i].name} -- value: $parsedValue");
        switch (field.type.toString()) {
          case 'int':
            final value = parsedValue != null ? int.tryParse(parsedValue) : null;
            fields.add(FieldValue.from(field as Field<int>, value));
          case 'double':
            final value = parsedValue != null ? double.tryParse(parsedValue) : null;
            fields.add(FieldValue.from(field as Field<double>, value));
          case 'DateTime':
            final value = parsedValue != null ? DateTime.tryParse(parsedValue) : null;
            fields.add(FieldValue.from(field as Field<DateTime>, value));
          case 'String':
          default:
            fields.add(FieldValue<String>(
              name: field.name,
              value: parsedValue,
              builder: field.builder,
            ));
        }
      }
    }
    return RawDataState(
      data:rows,
      page: page,
      pageSize: kPageSize,
    );
  }
}
