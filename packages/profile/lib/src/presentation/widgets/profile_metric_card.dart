import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

class ProfileMetricCard extends StatelessWidget {
  const ProfileMetricCard({required this.metric, super.key});

  final ProfileMetricCardViewModel metric;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return Container(
      height: 80,
      padding: EdgeInsets.all(style.layout.sm),
      decoration: BoxDecoration(
        color: metric.backgroundColor,
        borderRadius: BorderRadius.circular(style.layout.xs),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            metric.title,
            style: style.typography.bodySmall.withColor(
              style.color.textSecondary,
            ),
          ),
          Text(
            metric.value,
            style: style.typography.titleMedium.withColor(
              style.color.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
