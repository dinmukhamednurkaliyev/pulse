import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';

@immutable
class HomeWorkoutCardData {
  const HomeWorkoutCardData({
    required this.title,
    required this.difficulty,
    required this.date,
    required this.time,
    required this.room,
    required this.trainerName,
    required this.trainerImage,
    required this.backgroundColor,
  });
  final String title;
  final String difficulty;
  final String date;
  final String time;
  final String room;
  final String trainerName;
  final String trainerImage;
  final Color backgroundColor;
}

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({
    required this.workout,
    required this.isLeft,
    required this.onTap,
    super.key,
  });

  final HomeWorkoutCardData workout;
  final bool isLeft;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final style = context.style;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: workout.backgroundColor,
          borderRadius: BorderRadius.circular(style.layout.xs),
          boxShadow: [
            BoxShadow(
              color: context.style.color.shadowMedium.withValues(alpha: 0.1),
              blurRadius: style.layout.xs,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(style.layout.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: style.layout.xxs,
                  vertical: style.layout.xxxs,
                ),
                decoration: BoxDecoration(
                  color: style.color.backgroundWhite.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(style.layout.xxxs),
                ),
                child: Text(
                  workout.difficulty,
                  style: style.typography.bodySmall.withColor(
                    style.color.textPrimary,
                  ),
                ),
              ),
              SizedBox(height: style.layout.xxs),

              Text(
                workout.date,
                style: style.typography.bodySmall.withColor(
                  style.color.textSecondary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                workout.time,
                style: style.typography.bodySmall.withColor(
                  style.color.textSecondary,
                ),
                maxLines: 1,
              ),
              Text(
                workout.room,
                style: style.typography.bodySmall.withColor(
                  style.color.textSecondary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              const Spacer(),

              if (isLeft) ...[
                Row(
                  children: [
                    CircleAvatar(
                      radius: style.layout.xs,
                      backgroundImage: NetworkImage(workout.trainerImage),
                      backgroundColor: style.color.backgroundWhite.withValues(
                        alpha: 0.5,
                      ),
                    ),
                    SizedBox(width: style.layout.xxs),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Trainer',
                            style: style.typography.labelSmall.withColor(
                              style.color.textSecondary,
                            ),
                          ),
                          Text(
                            workout.trainerName,
                            style: style.typography.bodySmall.withColor(
                              style.color.textPrimary,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ] else ...[
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: style.layout.xl,
                    height: style.layout.xl,
                    decoration: BoxDecoration(
                      color: style.color.iconLightGrey,
                      borderRadius: BorderRadius.circular(style.layout.xxs),
                    ),
                    child: Icon(
                      size: style.layout.md,
                      Icons.extension,
                      color: style.color.iconGrey,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
