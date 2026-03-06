import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({required this.activity, required this.onTap, super.key});
  final ProfileActivityItemViewModel activity;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: style.layout.xxxs),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: style.color.borderLight)),
        ),
        child: Row(
          spacing: style.layout.xxxs,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: style.color.iconLightGrey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(style.layout.md),
              ),
              child: Icon(
                activity.icon,
                color: style.color.iconGrey,
                size: 20,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activity.title,
                    style: style.typography.bodyLarge.withColor(
                      style.color.textPrimary,
                    ),
                  ),
                  Text(
                    activity.subtitle,
                    style: style.typography.bodyLarge.withColor(
                      style.color.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: style.color.textSecondary,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
