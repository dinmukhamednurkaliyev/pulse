import 'dart:async';

import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session/session.dart';

class SessionPage extends StatelessWidget {
  const SessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final sessionController = SessionController();
        unawaited(sessionController.loadSessions());
        return sessionController;
      },
      child: PageLayout(
        appBar: const _SessionHeader(),
        body: BlocBuilder<SessionController, SessionState>(
          builder: (context, state) {
            return switch (state) {
              SessionInitial() || SessionLoading() => const LoadingView(),

              SessionError(:final message) => ErrorView(
                message: message,
                onRetry: () => context.read<SessionController>().loadSessions(),
              ),

              SessionLoaded(sessions: final items) => _SessionBody(
                sessions: items,
              ),
            };
          },
        ),
      ),
    );
  }
}

class _SessionHeader extends StatelessWidget implements PreferredSizeWidget {
  const _SessionHeader();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final color = context.color;
    final text = context.text;
    return NavigationAppBar(
      title: Text(
        'Sessions',
        style: text.titleLarge.withColor(color.textPrimary),
      ),
    );
  }
}

class _SessionBody extends StatelessWidget {
  const _SessionBody({required this.sessions});
  final List<SessionEntity> sessions;

  @override
  Widget build(BuildContext context) {
    final color = context.color;

    return ScrollColumn(
      children: [
        SessionAvailableSection(
          sessions: sessions
              .map(
                (session) => SessionCardDisplayModel(
                  title: session.title,
                  trainerName: session.trainerName,
                  difficulty: session.difficulty,
                  duration: session.duration,
                  calories: session.calories,
                  description: session.description,
                  backgroundColor: switch (session.category) {
                    SessionCategory.yoga ||
                    SessionCategory.strength => color.cardBackgroundYellow,
                    SessionCategory.balance ||
                    SessionCategory.cardio => color.cardBackgroundBlue,
                  },
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
