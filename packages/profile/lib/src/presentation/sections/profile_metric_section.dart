import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

class ProfileMetricSection extends StatelessWidget {
  const ProfileMetricSection({required this.metrics, super.key});

  final List<ProfileMetricCardViewModel> metrics;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return Row(
      spacing: style.layout.md,
      children: metrics
          .map(
            (item) => Expanded(
              child: ProfileMetricCard(
                metric: item,
              ),
            ),
          )
          .toList(),
    );
  }
}
