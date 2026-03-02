import 'package:flutter/material.dart';

@immutable
final class ProfileMetricCardDisplayModel {
  const ProfileMetricCardDisplayModel({
    required this.title,
    required this.value,
    required this.backgroundColor,
  });
  final String title;
  final String value;
  final Color backgroundColor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileMetricCardDisplayModel &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          value == other.value &&
          backgroundColor == other.backgroundColor;

  @override
  int get hashCode =>
      title.hashCode ^ value.hashCode ^ backgroundColor.hashCode;
}
