import 'package:session/session.dart';

sealed class SessionState {
  const SessionState();
}

final class SessionInitial extends SessionState {}

final class SessionLoading extends SessionState {}

final class SessionLoaded extends SessionState {
  const SessionLoaded(this.sessions);
  final List<SessionEntity> sessions;
}

final class SessionError extends SessionState {
  const SessionError(this.message);
  final String message;
}
