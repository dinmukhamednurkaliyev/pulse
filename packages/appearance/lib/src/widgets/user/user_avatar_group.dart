import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';

class UserAvatarGroup extends StatelessWidget {
  const UserAvatarGroup({
    required this.urls,
    this.overlap = 8,
    this.limit = 5,
    super.key,
  });

  final List<String?> urls;
  final double overlap;
  final int limit;

  @override
  Widget build(BuildContext context) {
    const avatarSize = 32.0;
    final widthFactor = (avatarSize - overlap) / avatarSize;

    final showCounter = urls.length > limit;
    final itemsToShow = showCounter ? limit : urls.length;
    final remaining = urls.length - limit;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < itemsToShow; i++)
          Align(
            alignment: Alignment.centerLeft,
            widthFactor: (i == itemsToShow - 1 && !showCounter)
                ? 1.0
                : widthFactor,
            child: UserAvatar.stack(url: urls[i]),
          ),
        if (showCounter)
          Align(
            alignment: Alignment.centerLeft,
            widthFactor: 1,
            child: UserAvatar.stack(
              label: '+$remaining',
            ),
          ),
      ],
    );
  }
}
