import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

typedef CustomTableSeparatorBuilder = Widget Function();

class CustomTable extends StatefulWidget {
  final List<CustomTableRow> rows;
  final CustomTableSeparatorBuilder? separatorBuilder;
  final double rowsHeight;

  const CustomTable({
    super.key,
    required this.rows,
    this.separatorBuilder,
    this.rowsHeight = 32,
  });

  @override
  State<CustomTable> createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: widget.rows.map((row) {
          if (widget.separatorBuilder != null && widget.rows.last != row) {
            return Column(
                children: [
                  SizedBox(height: widget.rowsHeight, child: Center(child: row)),
                  widget.separatorBuilder!(),
                ],
              );
          }
          return SizedBox(height: widget.rowsHeight, child: Center(child: row));
        }).toList()
      ),
    );
  }
}

class CustomTableRow extends StatelessWidget {
  final List<CustomTableCell> cells;

  const CustomTableRow({
    super.key,
    required this.cells,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: cells
    );
  }
}

enum CustomTableCellExtType {
  fitWidthContent,
  fixedWidth,
  fillRemaining,
}

class CustomTableCell extends StatelessWidget {
  final CustomTableCellExtType type;
  final double? width;
  final Widget child;

  const CustomTableCell({
    super.key,
    this.type = CustomTableCellExtType.fitWidthContent,
    this.width,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case CustomTableCellExtType.fitWidthContent:
        return Flexible(
          flex: 0,
          child: child,
        );
      case CustomTableCellExtType.fixedWidth:
        return SizedBox(
          width: width,
          child: child,
        );
      case CustomTableCellExtType.fillRemaining:
        return Expanded(
          flex: 2,
          child: child,
        );
    }
  }
}
