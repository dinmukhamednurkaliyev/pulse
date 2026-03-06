import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:session/session.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({required this.session, required this.onTap, super.key});

  final SessionCardViewModel session;
  final VoidCallback onTap;

  Color _getDifficultyColor(ColorTokens color, String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'easy':
        return color.difficultyEasy;
      case 'medium':
        return color.difficultyMedium;
      case 'hard':
        return color.difficultyHard;
      default:
        return color.iconGrey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    final difficultyColor = _getDifficultyColor(
      style.color,
      session.difficulty,
    );
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(style.layout.md),
        decoration: BoxDecoration(
          color: style.color.backgroundWhite,
          borderRadius: BorderRadius.circular(style.layout.xxxs),
          border: Border.all(
            color: style.color.backgroundWhite,
            width: 2,
          ),
        ),
        child: Row(
          spacing: style.layout.sm,
          children: [
            Container(
              width: 4,
              height: 80,
              decoration: BoxDecoration(
                color: session.backgroundColor,
                borderRadius: BorderRadius.circular(style.layout.xxxs),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: style.layout.sm,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        session.title,
                        style: style.typography.bodyLarge.withColor(
                          style.color.textPrimary,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: style.layout.xxxs,
                          vertical: style.layout.xxxs,
                        ),
                        decoration: BoxDecoration(
                          color: difficultyColor.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(
                            style.layout.xxxs,
                          ),
                        ),
                        child: Text(
                          session.difficulty,
                          style: style.typography.bodySmall.withColor(
                            difficultyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Trainer: ${session.trainerName}',
                    style: style.typography.bodySmall.withColor(
                      style.color.textSecondary,
                    ),
                  ),
                  Text(
                    session.description,
                    style: style.typography.bodySmall.withColor(
                      style.color.textSecondary,
                    ),
                  ),
                  Row(
                    spacing: style.layout.xxs,
                    children: [
                      _InfoChip(
                        icon: Icons.access_time,
                        title: session.duration,
                      ),
                      _InfoChip(
                        icon: Icons.local_fire_department,
                        title: session.calories,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: session.backgroundColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(style.layout.sm),
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: session.backgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  const _InfoChip({required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: style.layout.xxxs,
      children: [
        Icon(icon, size: 16, color: style.color.textSecondary),
        Text(
          title,
          style: style.typography.bodySmall.withColor(
            style.color.textSecondary,
          ),
        ),
      ],
    );
  }
}
