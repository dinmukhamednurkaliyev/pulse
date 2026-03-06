import 'package:appearance/src/presentation/appearance_system.dart';
import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  const PageLayout({
    required this.body,
    this.useSafeArea = true,
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
  final bool useSafeArea;
  final ScrollController? scrollController;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return Scaffold(
      backgroundColor: backgroundColor ?? style.color.backgroundPrimary,
      appBar: appBar != null ? _buildAppBar(appBar!) : null,
      body: useSafeArea
          ? SafeArea(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: horizontalPadding ?? style.layout.md,
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
