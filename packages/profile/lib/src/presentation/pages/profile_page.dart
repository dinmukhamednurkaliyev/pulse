import 'dart:async';

import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final profileController = ProfileController();
        unawaited(profileController.loadProfile());
        return profileController;
      },
      child: PageLayout(
        appBar: const _ProfileHeader(),
        body: BlocBuilder<ProfileController, ProfileState>(
          builder: (context, state) {
            return switch (state) {
              ProfileInitial() || ProfileLoading() => const LoadingView(),

              ProfileError(:final message) => ErrorView(
                message: message,
                onRetry: () => context.read<ProfileController>().loadProfile(),
              ),

              ProfileLoaded(
                :final user,
                :final metrics,
                :final activities,
              ) =>
                _ProfileBody(
                  user: user,
                  metrics: metrics,
                  activities: activities,
                ),
            };
          },
        ),
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget implements PreferredSizeWidget {
  const _ProfileHeader();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return NavigationAppBar(
      title: Text(
        'Profile',
        style: style.typography.titleLarge.withColor(style.color.textPrimary),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings, color: style.color.textPrimary),
        ),
      ],
    );
  }
}

class _ProfileBody extends StatelessWidget {
  const _ProfileBody({
    required this.user,
    required this.metrics,
    required this.activities,
  });
  final UserRecord user;
  final List<ProfileMetricEntity> metrics;
  final List<ProfileActivityItemEntity> activities;

  @override
  Widget build(BuildContext context) {
    final style = context.style;

    return ScrollColumn(
      children: [
        ProfileUserInfoSection(
          url: user.avatarUrl,
          name: user.name,
          address: user.address,
        ),
        ProfileMetricSection(
          metrics: metrics
              .map(
                (metric) => ProfileMetricCardViewModel(
                  title: metric.title,
                  value: metric.value,
                  backgroundColor: switch (metric.type) {
                    MetricType.weight => style.color.metricBackgroundGreen,
                    MetricType.goal => style.color.metricBackgroundBlue,
                    MetricType.calories => style.color.metricBackgroundOrange,
                  },
                ),
              )
              .toList(),
        ),
        ProfileActivitySection(
          activities: activities
              .map(
                (activity) => ProfileActivityItemViewModel(
                  title: activity.title,
                  subtitle: activity.subtitle,
                  icon: switch (activity.type) {
                    ActivityType.physical => Icons.directions_run,
                    ActivityType.statistics => Icons.assessment,
                    ActivityType.routes => Icons.route,
                    ActivityType.equipment => Icons.flash_on,
                    ActivityType.achievements => Icons.emoji_events,
                  },
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
