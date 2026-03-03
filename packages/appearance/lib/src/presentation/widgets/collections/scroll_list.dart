import 'package:flutter/material.dart';

class ScrollList<T> extends StatelessWidget {
  const ScrollList({
    required this.items,
    required this.itemBuilder,
    super.key,
    this.emptyPlaceholder,
    this.padding,
    this.separator,
    this.controller,
    this.shrinkWrap = false,
  });

  final List<T> items;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final Widget? emptyPlaceholder;
  final EdgeInsetsGeometry? padding;
  final Widget? separator;
  final ScrollController? controller;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return emptyPlaceholder ?? const SizedBox.shrink();
    }
    return ListView.separated(
      controller: controller,
      shrinkWrap: shrinkWrap,
      padding: padding,
      itemCount: items.length,
      separatorBuilder: (context, index) {
        return separator ?? const SizedBox(height: 12);
      },
      itemBuilder: (context, index) {
        return itemBuilder(context, items[index], index);
      },
    );
  }
}
