import 'dart:async';

import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final controller = HomeController();
        unawaited(controller.loadData());
        return controller;
      },
      child: PageLayout(
        appBar: const _HomeHeader(),
        body: BlocBuilder<HomeController, HomeState>(
          builder: (context, state) {
            return switch (state) {
              HomeInitial() || HomeLoading() => const LoadingView(),
              HomeError(:final message) => ErrorView(
                message: message,
                onRetry: () => context.read<HomeController>().loadData(),
              ),
              HomeLoaded() => _HomeBody(state: state),
            };
          },
        ),
      ),
    );
  }
}

class _HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const _HomeHeader();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final text = context.text;
    final color = context.color;

    final state = context.watch<HomeController>().state;

    return NavigationAppBar(
      title: switch (state) {
        HomeInitial() || HomeLoading() || HomeError() => Text(
          'Home',
          style: text.titleLarge.withColor(color.textPrimary),
        ),

        HomeLoaded(:final userName, :final avatarUrl) => Row(
          spacing: spacing.sm,
          children: [
            UserAvatar(url: avatarUrl),
            Expanded(
              child: HomeUserGreeting(name: userName),
            ),
            const HomeSearchButton(),
          ],
        ),
      },
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({required this.state});

  final HomeLoaded state;

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final controller = context.read<HomeController>();

    return ScrollColumn(
      children: [
        HomeDailyChallengeSection(
          challengeParticipants: state.challengeParticipants,
        ),
        HomeScheduleSection(
          selectedDate: state.selectedDate,
          onDateSelected: controller.updateDate,
        ),
        HomeWorkoutSection(
          workouts: state.workouts
              .map(
                (workout) => HomeWorkoutCardData(
                  title: workout.title,
                  difficulty: workout.difficulty,
                  date: workout.date,
                  time: workout.time,
                  room: workout.room,
                  trainerName: workout.trainerName,
                  trainerImage: workout.trainerImage,
                  backgroundColor: switch (workout.type) {
                    HomeWorkoutType.yoga => color.cardBackgroundYellow,
                    HomeWorkoutType.cardio => color.cardBackgroundBlue,
                  },
                ),
              )
              .toList(),
        ),
        HomeSocialMediaSection(
          socials: state.socials
              .map(
                (social) => HomeSocialMediaCardData(
                  icon: switch (social.platform) {
                    SocialPlatform.instagram => Icons.camera_alt,
                    SocialPlatform.youtube => Icons.play_circle_outline,
                    SocialPlatform.telegram => Icons.chat_bubble_outline,
                  },
                  backgroundColor: switch (social.platform) {
                    SocialPlatform.instagram => color.socialPink,
                    SocialPlatform.youtube => color.socialRed,
                    SocialPlatform.telegram => color.socialBlue,
                  },
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
