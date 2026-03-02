import 'package:flutter/material.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({
    required this.title,
    super.key,
    this.actions,
    this.showBack = true,
    this.leading,
  });
  final Widget title;
  final List<Widget>? actions;
  final bool showBack;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: actions,
      leading: showBack ? leading : null,
      centerTitle: true,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
