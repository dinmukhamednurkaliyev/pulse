import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

class ProfileActivitySection extends StatelessWidget {
  const ProfileActivitySection({required this.activities, super.key});

  final List<ProfileActivityItemViewModel> activities;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return Column(
      spacing: style.layout.sm,
      children: activities
          .map(
            (item) => ActivityItem(
              activity: item,
              onTap: () {},
            ),
          )
          .toList(),
    );
  }
}
