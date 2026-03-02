import 'package:home/home.dart';

sealed class HomeState {
  const HomeState();
}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {
  const HomeLoaded({
    required this.userName,
    required this.avatarUrl,
    required this.challengeParticipants,
    required this.workouts,
    required this.socials,
    required this.selectedDate,
  });
  final String userName;
  final String avatarUrl;
  final List<String> challengeParticipants;
  final List<HomeWorkoutEntity> workouts;
  final List<HomeSocialEntity> socials;
  final DateTime selectedDate;

  HomeLoaded copyWith({DateTime? selectedDate}) {
    return HomeLoaded(
      userName: userName,
      avatarUrl: avatarUrl,
      challengeParticipants: challengeParticipants,
      workouts: workouts,
      socials: socials,
      selectedDate: selectedDate ?? this.selectedDate,
    );
  }
}

final class HomeError extends HomeState {
  const HomeError(this.message);
  final String message;
}
