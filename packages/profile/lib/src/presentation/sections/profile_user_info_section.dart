import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';

class ProfileUserInfoSection extends StatelessWidget {
  const ProfileUserInfoSection({
    required this.address,
    required this.name,
    super.key,
    this.url,
    this.label,
  });

  final String? url;
  final String? label;
  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return Row(
      spacing: style.layout.sm,
      children: [
        UserAvatar(
          url: url,
          label: label,
          size: 80,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: style.typography.titleLarge.withColor(
                  style.color.textPrimary,
                ),
              ),
              SizedBox(height: style.layout.xxxs),
              Text(
                address,
                style: style.typography.titleSmall.withColor(
                  style.color.textSecondary,
                ),
              ),
              Row(
                spacing: style.layout.sm,
                children: [
                  Text(
                    'Followers 72',
                    style: style.typography.bodyMedium.withColor(
                      style.color.textPrimary,
                    ),
                  ),
                  Text(
                    'Following 162',
                    style: style.typography.bodyMedium.withColor(
                      style.color.textPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          spacing: style.layout.xxxs,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: style.color.iconLightGrey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(style.layout.sm),
              ),
              child: Icon(
                Icons.share,
                color: style.color.iconGrey,
                size: 18,
              ),
            ),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: style.color.iconLightGrey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(style.layout.sm),
              ),
              child: Icon(
                Icons.edit,
                color: style.color.iconGrey,
                size: 18,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
