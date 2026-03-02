enum HomeWorkoutType { yoga, cardio }

enum SocialPlatform { instagram, youtube, telegram }

class HomeWorkoutEntity {
  const HomeWorkoutEntity({
    required this.title,
    required this.difficulty,
    required this.date,
    required this.time,
    required this.room,
    required this.trainerName,
    required this.trainerImage,
    required this.type,
  });
  final String title;
  final String difficulty;
  final String date;
  final String time;
  final String room;
  final String trainerName;
  final String trainerImage;
  final HomeWorkoutType type;
}
