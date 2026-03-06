import 'package:flutter/material.dart';

@immutable
final class SessionCardViewModel {
  const SessionCardViewModel({
    required this.backgroundColor,
    required this.calories,
    required this.description,
    required this.difficulty,
    required this.duration,
    required this.trainerName,
    required this.title,
  });
  final String title;
  final String trainerName;
  final String duration;
  final String difficulty;
  final String calories;
  final String description;
  final Color backgroundColor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionCardViewModel &&
          runtimeType == other.runtimeType &&
          backgroundColor == other.backgroundColor &&
          calories == other.calories &&
          description == other.description &&
          difficulty == other.difficulty &&
          duration == other.duration &&
          trainerName == other.trainerName &&
          title == other.title;

  @override
  int get hashCode =>
      backgroundColor.hashCode ^
      calories.hashCode ^
      description.hashCode ^
      difficulty.hashCode ^
      duration.hashCode ^
      trainerName.hashCode ^
      title.hashCode;
}
