import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

class ProfileMetricCard extends StatelessWidget {
  const ProfileMetricCard({required this.metric, super.key});

  final ProfileMetricCardDisplayModel metric;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final radius = context.radius;
    final color = context.color;
    return Container(
      height: 80,
      padding: EdgeInsets.all(spacing.sm),
      decoration: BoxDecoration(
        color: metric.backgroundColor,
        borderRadius: BorderRadius.circular(radius.xs),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            metric.title,
            style: context.text.bodySmall.withColor(color.textSecondary),
          ),
          Text(
            metric.value,
            style: context.text.titleMedium.withColor(color.textPrimary),
          ),
        ],
      ),
    );
  }
}
