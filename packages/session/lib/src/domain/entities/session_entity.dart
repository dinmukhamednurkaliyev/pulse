enum SessionCategory { yoga, balance, strength, cardio }

class SessionEntity {
  const SessionEntity({
    required this.title,
    required this.trainerName,
    required this.difficulty,
    required this.duration,
    required this.calories,
    required this.description,
    required this.category,
  });
  final String title;
  final String trainerName;
  final String difficulty;
  final String duration;
  final String calories;
  final String description;
  final SessionCategory category;
}
