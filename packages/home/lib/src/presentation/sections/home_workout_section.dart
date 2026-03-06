import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';

class HomeWorkoutSection extends StatelessWidget {
  const HomeWorkoutSection({
    required this.workouts,
    super.key,
  });

  final List<HomeWorkoutCardData> workouts;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return SizedBox(
      height: 200,
      child: LayoutBuilder(
        builder: (context, constraints) {
          const count = 2;
          final totalSpacing = style.layout.sm * (count - 1);
          final itemWidth = (constraints.maxWidth - totalSpacing) / count;

          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: workouts.length,
            separatorBuilder: (context, index) =>
                SizedBox(width: style.layout.sm),
            itemBuilder: (context, index) {
              final item = workouts[index];
              return SizedBox(
                width: itemWidth,
                child: WorkoutCard(
                  workout: item,
                  isLeft: index.isEven,
                  onTap: () {
                    context.go('/session-detail');
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
