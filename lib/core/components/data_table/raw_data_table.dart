import 'package:apparence_kit/core/components/data_table/raw_data_models.dart';
import 'package:apparence_kit/core/components/data_table/raw_data_notifier.dart';
import 'package:apparence_kit/core/components/data_table/raw_data_searchbar.dart';
import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

typedef FieldActionsBuilder = List<Widget> Function(List<FieldValue> row);

class RawDataController {

  RawDataNotifier? _notifier;
  
  void refresh() {
    _notifier?.refresh();
  }

  // ignore: avoid_setters_without_getters
  set notifier(RawDataNotifier? value) {
    _notifier = value;
  }
}

class RawDataTableComponent extends ConsumerStatefulWidget {
  final List<Field> fields;
  
  final String tableName;
  
  final String orderBy;
  
  final bool orderAscending;
  
  final List<RawDataFilter>? filters;

  final FieldActionsBuilder? actionsBuilder;

  /// Whether to show pagination buttons
  final bool showPagination;

  /// whether to show a checkbox to select rows
  final bool showCheckbox;

  /// Whether to show the search bar
  final bool showSearchBar;

  final RawDataController? controller;

  const RawDataTableComponent({
    required this.fields, 
    required this.tableName, 
    required this.orderBy,
    this.orderAscending = true,
    this.actionsBuilder,
    this.filters,
    this.showPagination = true,
    this.showCheckbox = true,
    this.showSearchBar = true,
    this.controller,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RawDataTableComponentState();
}

class _RawDataTableComponentState extends ConsumerState<RawDataTableComponent> {
  Set<int> selectedIndexes = {};
  RawDataController? controller;

  RawDataNotifier get notifier => ref.read(rawDataNotifierProvider(
      RawDataProviderArgs(
        tableName: widget.tableName, 
        fields: widget.fields,
        orderBy: widget.orderBy,
        orderAscending: widget.orderAscending,
        filters: widget.filters,
      ),
    ).notifier
  );

  @override
  void initState() {
    super.initState();
    controller = widget.controller;
    controller?.notifier = notifier;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
      rawDataNotifierProvider(
        RawDataProviderArgs(
          tableName: widget.tableName, 
          fields: widget.fields,
          orderBy: widget.orderBy,
          orderAscending: widget.orderAscending,
          filters: widget.filters,
        ),
      ),
    );

    return state.map(
      data: (data) => ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (widget.showSearchBar)
                const SizedBox(height: 4),
              if (widget.showSearchBar)
                IntrinsicHeight(
                  child: RawDataSearchBar(
                    fields: widget.fields,
                    nbRecords: data.value.data.length,
                    notifier: notifier,
                  ),
                ),
              if (widget.showSearchBar)
                const SizedBox(height: 16),
              DataTable(
                headingRowColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) => context.colors.surface,
                ),
                headingRowHeight: 44.0,
                horizontalMargin: 0,
                dividerThickness: 1.0,
                border: const TableBorder(
                  horizontalInside: BorderSide(
                    color: Color(0xFFF2F2F2),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(32.0),
                ),
                columns: [
                  if (widget.showCheckbox)
                    DataColumn(
                      label: Checkbox(
                        value: selectedIndexes.length == data.value.data.length,
                        onChanged: (_) {
                          setState(() {
                            if (selectedIndexes.length == data.value.data.length) {
                              selectedIndexes.clear();
                              return;
                            }
                            selectedIndexes = data.value.data.asMap().keys.toSet();
                          });
                        },
                      ),
                    ),
                  ...widget.fields.map(
                    (field) => DataColumn(
                      label: Text(
                        field.name,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: context.colors.onSurface.withOpacityCpy(.6),
                        ),
                      ),
                    ),
                  ),
                  if (widget.actionsBuilder != null)
                    DataColumn(
                      label: Text(
                        'Actions',
                        style: context.textTheme.bodySmall?.copyWith(
                          color: context.colors.onSurface.withOpacityCpy(.6),
                        ),
                      ),
                    ),
                ],
                rows: data.value.data
                    .map(
                      (row) => DataRow(
                        color: WidgetStateProperty.resolveWith<Color?>(
                          (states) {
                            if (states.contains(WidgetState.selected)) {
                              return context.colors.primary.withOpacityCpy(.1);
                            }
                            return null;
                          },
                        ),
                        selected: selectedIndexes.contains(
                          data.value.data.indexOf(row),
                        ),
                        cells: [
                          if (widget.showCheckbox)
                            DataCell(Checkbox(
                              value: selectedIndexes.contains(
                                data.value.data.indexOf(row),
                              ),
                              visualDensity: VisualDensity.comfortable,
                              onChanged: (value) {
                                setState(() {
                                  final index = data.value.data.indexOf(row);
                                  if (selectedIndexes.contains(index)) {
                                    selectedIndexes.remove(index);
                                    return;
                                  }
                                  selectedIndexes.add(index);
                                });
                              },
                            )),
                          ...row.map(
                            (field) => switch (field.builder) {
                              null => DataCell(
                                  Text(
                                    switch (field.value) {
                                      String _ => field.value as String,
                                      DateTime _ => DateFormat('dd/MM/yyyy HH:mm')
                                          .format(field.value as DateTime),
                                      _ => field.value.toString(),
                                    },
                                    style: context.textTheme.bodySmall?.copyWith(
                                      color: context.colors.onSurface,
                                    ),
                                  ),
                                ),
                              _ => DataCell(
                                  field.builder!(field.value),
                                ),
                            },
                          ),
                          if (widget.actionsBuilder != null)
                            DataCell(
                              Row(
                                children: widget.actionsBuilder!(row),
                              ),
                            ),
                        ],
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 16),
              if (data.value.data.isEmpty)
                SizedBox(
                  height: 64,
                  child: Center(
                    child: Text(
                      'No data found',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colors.onSurface.withOpacityCpy(.6),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              if (widget.showPagination)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: data.value.canGoPreviousPage 
                        ? () => notifier.loadPreviousPage()
                        : null, 
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: context.colors.onBackground.withOpacityCpy(.3),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    IconButton(
                      onPressed: data.value.canGoNextPage 
                        ? () => notifier.loadNextPage()
                        : null,
                      icon: Icon(
                        Icons.arrow_forward_ios, 
                        size: 16,
                        color: context.colors.onBackground.withOpacityCpy(.3),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
      error: (error) {
        debugPrint("error: ${error.error} ${error.stackTrace}");
        return Center(
          child: Text(error.error.toString()),
        );
      },
      loading: (_) => const Center(child: CircularProgressIndicator()),
    );
  }
}
