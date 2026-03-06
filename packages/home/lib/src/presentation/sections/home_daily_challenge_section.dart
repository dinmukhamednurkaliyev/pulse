import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';

class HomeDailyChallengeSection extends StatelessWidget {
  const HomeDailyChallengeSection({
    required this.challengeParticipants,
    super.key,
  });

  final List<String> challengeParticipants;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return Container(
      padding: EdgeInsets.all(style.layout.md),
      decoration: BoxDecoration(
        color: style.color.backgroundPrimary,
        borderRadius: BorderRadius.circular(style.layout.md),
        boxShadow: [
          BoxShadow(
            color: style.color.shadowLight,
            blurRadius: style.layout.md,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: style.layout.sm,
              children: [
                Text(
                  'Daily challenge',
                  style: style.typography.titleLarge.withColor(
                    style.color.textPrimary,
                  ),
                ),
                Text(
                  'Do your plan before 09:00 AM',
                  style: style.typography.labelLarge.withColor(
                    style.color.textSecondary,
                  ),
                ),
                Row(
                  children: [
                    UserAvatarStack(urls: challengeParticipants),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 120,
            height: 120,
            child: Center(
              child: RiveWidgetBuilder(
                fileLoader: FileLoader.fromAsset(
                  'assets/animations/sport_winner.riv',
                  riveFactory: Factory.flutter,
                ),
                builder: (context, state) {
                  return switch (state) {
                    RiveLoading() => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                    RiveLoaded(:final controller) => RiveWidget(
                      controller: controller,
                    ),
                    RiveFailed() => const Center(
                      child: Icon(Icons.error_outline, color: Colors.red),
                    ),
                  };
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
