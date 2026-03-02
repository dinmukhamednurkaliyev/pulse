import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';

class DataScroll extends StatelessWidget {
  const DataScroll({
    required this.children,
    super.key,
    this.padding,
    this.controller,
    this.physics,
    this.shrinkWrap = false,
    this.spacing,
  });
  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final ScrollController? controller;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final double? spacing;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      physics: physics ?? const BouncingScrollPhysics(),
      child: Column(
        spacing: spacing ?? context.spacing.md,
        mainAxisSize: shrinkWrap ? MainAxisSize.min : MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }
}
