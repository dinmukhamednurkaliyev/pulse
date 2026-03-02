import 'package:flutter/material.dart';

@immutable
final class ProfileActivityItemDisplayModel {
  const ProfileActivityItemDisplayModel({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  final String title;
  final String subtitle;
  final IconData icon;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileActivityItemDisplayModel &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          subtitle == other.subtitle &&
          icon == other.icon;

  @override
  int get hashCode => title.hashCode ^ subtitle.hashCode ^ icon.hashCode;
}
