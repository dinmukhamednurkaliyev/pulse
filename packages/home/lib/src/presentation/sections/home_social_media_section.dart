import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

class HomeSocialMediaSection extends StatelessWidget {
  const HomeSocialMediaSection({
    required this.socials,
    super.key,
  });

  final List<HomeSocialMediaCardData> socials;

  @override
  Widget build(BuildContext context) {
    final style = context.style;

    return Container(
      padding: EdgeInsets.all(style.layout.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(style.layout.sm),
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: style.layout.md,
        runSpacing: style.layout.sm,
        children: socials.map((data) {
          return SocialMediaCard(
            social: data,
          );
        }).toList(),
      ),
    );
  }
}
