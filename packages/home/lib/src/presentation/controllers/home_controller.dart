import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/home.dart';

class HomeController extends Cubit<HomeState> {
  HomeController() : super(HomeInitial());

  Future<void> loadData() async {
    emit(HomeLoading());
    try {
      await Future<void>.delayed(const Duration(milliseconds: 500));

      emit(
        HomeLoaded(
          userName: 'Amber',
          avatarUrl:
              'https://plus.unsplash.com/premium_photo-1664369473447-64172945caa0?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGdpcmwlMjBwb3J0cmFpdCUyMHByb2Zlc3Npb25hbHxlbnwwfHwwfHx8MA%3D%3Dpor.webp',
          selectedDate: DateTime.now(),
          challengeParticipants: [
            'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
            'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
            'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
            'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
            'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
            'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
            'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
            'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
            'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
            'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
          ],
          workouts: [
            const HomeWorkoutEntity(
              title: 'Yoga Group',
              difficulty: 'Medium',
              date: '25 Nov.',
              time: '14:00-15:00',
              room: 'A5 room',
              trainerName: 'Kellie Jetton',
              trainerImage:
                  'https://images.unsplash.com/photo-1549351236-caca0f174515?q=80&w=928&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3DYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              type: HomeWorkoutType.yoga,
            ),
            const HomeWorkoutEntity(
              title: 'Cardio Group',
              difficulty: 'Hard',
              date: '28 Nov.',
              time: '10:00-11:00',
              room: 'A3 room',
              trainerName: 'Loretta Waller',
              trainerImage:
                  'https://images.unsplash.com/photo-1635328372330-757aa2e61d57?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              type: HomeWorkoutType.cardio,
            ),
          ],
          socials: [
            (platform: SocialPlatform.instagram, url: '...'),
            (platform: SocialPlatform.youtube, url: '...'),
            (platform: SocialPlatform.telegram, url: '...'),
          ],
        ),
      );
    } on Exception catch (exception) {
      emit(HomeError(exception.toString()));
    }
  }

  void updateDate(DateTime newDate) {
    final currentState = state;
    if (currentState is HomeLoaded) {
      emit(currentState.copyWith(selectedDate: newDate));
    }
  }
}
