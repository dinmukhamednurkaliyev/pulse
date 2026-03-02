import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session/session.dart';

class SessionController extends Cubit<SessionState> {
  SessionController() : super(SessionInitial());

  Future<void> loadSessions() async {
    emit(SessionLoading());
    try {
      await Future<void>.delayed(const Duration(milliseconds: 800));

      final sessions = [
        const SessionEntity(
          title: 'Yoga Group',
          trainerName: 'Kellie Jetton',
          difficulty: 'Medium',
          duration: '1 hr',
          calories: '115 kcal',
          description: 'Gentle vinvasa flow to improve flexibility and balance',
          category: SessionCategory.yoga,
        ),
        const SessionEntity(
          title: 'Balance',
          trainerName: 'Kellie Jetton',
          difficulty: 'Easy',
          duration: '30 min',
          calories: '90 kcal',
          description: 'Light session to activate core and stabilizers.',
          category: SessionCategory.balance,
        ),
        const SessionEntity(
          title: 'Strength Training',
          trainerName: 'Kellie Jetton',
          difficulty: 'Hard',
          duration: '30 min',
          calories: '250 kcal',
          description: 'Build lean muscle and increase metabolism',
          category: SessionCategory.strength,
        ),
        const SessionEntity(
          title: 'Cardio Blast',
          trainerName: 'Kellie Jetton',
          difficulty: 'Medium',
          duration: '45 min',
          calories: '300 kcal',
          description: 'High intensity interval training to boost metabolism',
          category: SessionCategory.cardio,
        ),
      ];

      emit(SessionLoaded(sessions));
    } on Exception catch (exception) {
      emit(SessionError(exception.toString()));
    }
  }
}
