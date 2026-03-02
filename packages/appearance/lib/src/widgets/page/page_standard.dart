import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';

class PageStandard extends StatelessWidget {
  const PageStandard({
    required this.body,
    this.safe = true,
    this.appBar,
    this.bottomNavigationBar,
    this.scrollController,
    super.key,
    this.floatingActionButton,
    this.backgroundColor,
    this.horizontalPadding,
  });
  final Widget body;
  final Widget? appBar;
  final Widget? bottomNavigationBar;
  final bool safe;
  final ScrollController? scrollController;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? context.color.backgroundPrimary,
      appBar: appBar != null ? _buildAppBar(appBar!) : null,
      body: safe
          ? SafeArea(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: horizontalPadding ?? context.spacing.md,
                ),
                child: body,
              ),
            )
          : body,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }

  PreferredSizeWidget _buildAppBar(Widget widget) {
    if (widget is PreferredSizeWidget) return widget;
    return PreferredSize(
      preferredSize: const Size.fromHeight(56),
      child: widget,
    );
  }
}
