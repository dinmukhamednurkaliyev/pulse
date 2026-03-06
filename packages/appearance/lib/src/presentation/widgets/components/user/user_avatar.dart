import 'package:appearance/src/presentation/appearance_system.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    this.url,
    this.label,
    this.size = 50.0,
    this.showShadow = true,
    this.borderColor,
    super.key,
  });

  const UserAvatar.stack({
    String? url,
    String? label,
    Key? key,
  }) : this(
         url: url,
         label: label,
         size: 32,
         showShadow: false,
         borderColor: null,
         key: key,
       );

  final String? url;
  final String? label;
  final double size;
  final bool showShadow;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final style = context.style;

    final effectiveBorderColor =
        borderColor ??
        (size > 40
            ? style.color.backgroundPrimary
            : style.color.backgroundWhite);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,

        color: effectiveBorderColor,
        border: Border.all(
          color: effectiveBorderColor,
          width: 2,
        ),
        boxShadow: showShadow
            ? [
                BoxShadow(
                  color: style.color.shadowMedium,
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: ClipOval(
        child: label != null
            ? Center(
                child: Text(
                  label!,
                  style: TextStyle(
                    fontSize: size * 0.38,
                    fontWeight: FontWeight.bold,
                    color: style.color.textPrimary,
                  ),
                ),
              )
            : Image.network(
                url ?? '',
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return _ErrorPlaceholder(size: size);
                },

                errorBuilder: (context, error, stackTrace) =>
                    _ErrorPlaceholder(size: size),
              ),
      ),
    );
  }
}

class _ErrorPlaceholder extends StatelessWidget {
  const _ErrorPlaceholder({required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    final style = context.style;

    return Container(
      alignment: Alignment.center,
      color: style.color.iconLightGrey,
      child: Icon(
        Icons.person,
        color: style.color.iconGrey,
        size: size * 0.6,
      ),
    );
  }
}
