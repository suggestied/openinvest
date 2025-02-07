import 'package:apparence_kit/core/components/data_table/raw_data_models.dart';
import 'package:apparence_kit/core/components/data_table/raw_data_notifier.dart';
import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';


class RawDataSearchBar extends ConsumerStatefulWidget {
  final List<Field> fields;
  final int nbRecords;
  final RawDataNotifier notifier;

  const RawDataSearchBar({
    super.key,
    required this.fields,
    required this.nbRecords,
    required this.notifier,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RawDataSearchBarState();
}

class _RawDataSearchBarState extends ConsumerState<RawDataSearchBar> {

  bool expandSearchBar = false;
  String? column;
  String? query;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Text(
          '${widget.nbRecords} records',
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colors.onSurface.withOpacityCpy(.6),
          ),
        ),
        const Spacer(),
        if (expandSearchBar && query != null && query!.isNotEmpty)
          IconButton(
            icon: Icon(HugeIcons.strokeRoundedCancelCircle, size: 21),
            onPressed: () {
              setState(() => expandSearchBar = false);
              widget.notifier.clearSearch();
            },
          ),
        if (expandSearchBar)
          Flexible(
            child: Animate(
              effects: [
                FadeEffect(
                  delay: Duration(milliseconds: 200),
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                ),
                MoveEffect(
                  delay: Duration(milliseconds: 200),
                  duration: Duration(milliseconds: 450),
                  curve: Curves.easeOut,
                  begin: Offset(200, 0),
                  end: Offset.zero,
                ),
              ],
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(HugeIcons.strokeRoundedSearch01, size: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: BorderSide.none,
                    ),
                    isDense: true,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    fillColor: context.colors.surface,
                    hintStyle: context.textTheme.bodyMedium?.copyWith(
                      color: context.colors.onSurface.withOpacityCpy(.6),
                    ),
                  ),
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colors.onSurface,
                  ),
                  onChanged: (value) {
                    setState(() {
                      query = value;
                    });
                  },
                ),
              ),
            ),
          ),
        if (expandSearchBar)
          Flexible(
            child: Animate(
              effects: [
                FadeEffect(
                  delay: Duration(milliseconds: 100),
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeIn,
                ),
                MoveEffect(
                  delay: Duration(milliseconds: 100),
                  duration: Duration(milliseconds: 450),
                  curve: Curves.easeOut,
                  begin: Offset(200, 0),
                  end: Offset.zero,
                ),
              ],
              child: SizedBox(
                height: 40,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Field',
                    isDense: true,
                  ),
                  items: widget.fields.map((field) => DropdownMenuItem(
                            value: field.name,
                            child: Text(field.name),
                          )).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      column = newValue;
                    });
                  },
                ),
              ),
            ),
          ),
        if (expandSearchBar)
          Animate(
            effects: [
              FadeEffect(
                delay: Duration(milliseconds: 0),
                duration: Duration(milliseconds: 200),
                curve: Curves.easeIn,
              ),
              MoveEffect(
                delay: Duration(milliseconds: 0),
                duration: Duration(milliseconds: 450),
                curve: Curves.easeOut,
                begin: Offset(200, 0),
                end: Offset.zero,
              ),
            ],
            child: ElevatedButton.icon(
              icon: Icon(HugeIcons.strokeRoundedSearch01, size: 16, color: context.colors.background),
              onPressed: () {
                widget.notifier.search(query: query, column: column);
              }, 
              label: Text('Search'),
            ),
          ),
        if (!expandSearchBar)
          IconButton(
            icon: Icon(HugeIcons.strokeRoundedSearch01, size: 16),
            onPressed: () => setState(() => expandSearchBar = true),
          ),
        // const SizedBox(width: 2),
      ],
    );
  }
}