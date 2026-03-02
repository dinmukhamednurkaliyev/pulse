import 'package:flutter/material.dart';
import 'package:home/home.dart';

@immutable
class HomeSocialMediaCardData {
  const HomeSocialMediaCardData({
    required this.icon,
    required this.backgroundColor,
  });

  final IconData icon;
  final Color backgroundColor;
}

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({
    required this.social,
    super.key,
  });

  final HomeSocialMediaCardData social;

  @override
  Widget build(BuildContext context) {
    return HomeSocialMediaIcon(
      icon: social.icon,
      iconColor: social.backgroundColor,
    );
  }
}
