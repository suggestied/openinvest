import 'package:flutter/material.dart';

class RawDataState {
  final int page;
  final int pageSize;
  final List<List<FieldValue>> data;
  final List<RawDataFilter>? filters;

  RawDataState({
    required this.data,
    required this.page,
    required this.pageSize,
    this.filters,
  });

  RawDataState copyWith({
    List<List<FieldValue>>? data,
    int? page,
    int? pageSize,
    List<RawDataFilter>? filters,
  }) {
    return RawDataState(
      data: data ?? this.data,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      filters: filters ?? this.filters,
    );
  }

  bool get canGoPreviousPage => page > 0;

  bool get canGoNextPage => data.length == pageSize;
}


typedef FieldBuilder<T> = Widget Function(dynamic value);

/// Represents a field in the raw data table
class Field<T> {
  final String name;
  final Type type;
  final FieldBuilder<T>? builder;

  Field({required this.name, this.builder, required this.type});

  static Field<String> fromString({required String name, FieldBuilder<String>? builder}) {
    return Field<String>(name: name, builder: builder, type: String);
  }

  static Field<int> fromInt({required String name, FieldBuilder<int>? builder}) {
    return Field<int>(name: name, builder: builder, type: int);
  }

  static Field<DateTime> fromDateTime({required String name, FieldBuilder<DateTime>? builder}) {
    return Field<DateTime>(name: name, builder: builder, type: DateTime);
  }

  static Field<T> from<T>({required String name, FieldBuilder<T>? builder, required Type type}) {
    return Field<T>(name: name, builder: builder, type: type);
  }
}

/// Represents a value in the raw data table
class FieldValue<T> {
  final String name;
  final T? value;
  final FieldBuilder<T>? builder;

  FieldValue({required this.name, required this.value, this.builder});

  factory FieldValue.from(Field<T> field, T? value) {
    return FieldValue(
      name: field.name,
      value: value,
      builder: field.builder,
    );
  }
}

/// Represents a query filter to be applied to the raw data table
class RawDataFilter {
  final String column;
  final String operator;
  final String value;

  RawDataFilter({
    required this.column,
    required this.operator,
    required this.value,
  });
}