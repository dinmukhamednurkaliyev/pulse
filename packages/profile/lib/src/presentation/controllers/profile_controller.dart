import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/profile.dart';

class ProfileController extends Cubit<ProfileState> {
  ProfileController() : super(ProfileInitial());

  Future<void> loadProfile() async {
    emit(ProfileLoading());
    try {
      await Future<void>.delayed(const Duration(seconds: 1));

      emit(
        const ProfileLoaded(
          user: (
            name: 'Amber Doe Smith',
            address: '123 Main St, New York, USA',
            avatarUrl:
                'https://plus.unsplash.com/premium_photo-1664369473447-64172945caa0?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGdpcmwlMjBwb3J0cmFpdCUyMHByb2Zlc3Npb25hbHxlbnwwfHwwfHx8MA%3D%3Dpor.webp',
          ),
          metrics: [
            ProfileMetricEntity(
              title: 'Start weight',
              value: '53.3 kg',
              type: MetricType.weight,
            ),
            ProfileMetricEntity(
              title: 'Goal',
              value: '50.0 kg',
              type: MetricType.goal,
            ),
          ],
          activities: [
            ProfileActivityItemEntity(
              title: 'Physical Activity',
              subtitle: '2 days ago',
              type: ActivityType.physical,
            ),
            ProfileActivityItemEntity(
              title: 'Statistics',
              subtitle: '109 kilo/year',
              type: ActivityType.statistics,
            ),
            ProfileActivityItemEntity(
              title: 'Routes',
              subtitle: '109 routes',
              type: ActivityType.routes,
            ),
            ProfileActivityItemEntity(
              title: 'Equipment',
              subtitle: 'Nike pegasus 3000',
              type: ActivityType.equipment,
            ),
            ProfileActivityItemEntity(
              title: 'Achievements',
              subtitle: '109 achievements',
              type: ActivityType.achievements,
            ),
          ],
        ),
      );
    } on Exception catch (exception) {
      emit(ProfileError(exception.toString()));
    }
  }
}
