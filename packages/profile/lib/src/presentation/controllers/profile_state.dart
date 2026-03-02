import 'package:profile/profile.dart';

sealed class ProfileState {
  const ProfileState();
}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileLoaded extends ProfileState {
  const ProfileLoaded({
    required this.user,
    required this.metrics,
    required this.activities,
  });
  final UserRecord user;
  final List<ProfileMetricEntity> metrics;
  final List<ProfileActivityItemEntity> activities;
}

final class ProfileError extends ProfileState {
  const ProfileError(this.message);
  final String message;
}
