import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';

class HomeSearchButton extends StatelessWidget {
  const HomeSearchButton({
    this.size = 40,
    this.iconSize = 20,
    this.onTap,
    super.key,
  });

  final double size;
  final double iconSize;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: style.color.backgroundPrimary,
          borderRadius: BorderRadius.circular(style.layout.xs),
          boxShadow: [
            BoxShadow(
              color: style.color.shadowLight,
              blurRadius: style.layout.xs,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(
          Icons.search,
          color: style.color.iconGrey,
          size: iconSize,
        ),
      ),
    );
  }
}
