import 'package:appearance/src/presentation/appearance_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    required this.icon,
    required this.isSelected,
    required this.onTap,
    super.key,
  });
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: isSelected ? style.color.backgroundWhite : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: isSelected
              ? style.color.backgroundBlack
              : style.color.backgroundWhite,
          size: 24,
        ),
      ),
    );
  }
}

class NavigationShell extends StatelessWidget {
  const NavigationShell({
    required this.shell,
    required this.items,
    super.key,
  });
  final StatefulNavigationShell shell;
  final List<({IconData icon, int index})> items;

  @override
  Widget build(BuildContext context) {
    final style = context.style;

    return Scaffold(
      body: shell,
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Container(
          margin: EdgeInsets.fromLTRB(
            style.layout.xxl,
            style.layout.xxs,
            style.layout.xxl,
            style.layout.xxl,
          ),
          padding: EdgeInsets.symmetric(vertical: style.layout.xxs),
          decoration: BoxDecoration(
            color: style.color.bottomNavigationBackground,
            borderRadius: BorderRadius.circular(style.layout.xxxl),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items
                .map(
                  (item) => NavigationBarItem(
                    icon: item.icon,
                    isSelected: shell.currentIndex == item.index,
                    onTap: () => shell.goBranch(
                      item.index,
                      initialLocation: item.index == shell.currentIndex,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
