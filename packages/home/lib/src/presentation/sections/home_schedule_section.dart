import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class HomeScheduleSection extends StatelessWidget {
  const HomeScheduleSection({
    required this.selectedDate,
    required this.onDateSelected,
    this.startDate,
    super.key,
  });

  final DateTime selectedDate;
  final DateTime? startDate;
  final void Function(DateTime) onDateSelected;

  @override
  Widget build(BuildContext context) {
    final style = context.style;

    final effectiveStartDate =
        startDate ??
        selectedDate.subtract(Duration(days: selectedDate.weekday - 1));

    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          final date = effectiveStartDate.add(Duration(days: index));
          final isSelected =
              date.day == selectedDate.day &&
              date.month == selectedDate.month &&
              date.year == selectedDate.year;
          return GestureDetector(
            onTap: () => onDateSelected(date),
            child: Container(
              width: style.layout.xxl + style.layout.sm,
              margin: EdgeInsets.only(right: style.layout.xxxs),
              decoration: BoxDecoration(
                color: isSelected
                    ? style.color.backgroundBlack
                    : style.color.backgroundWhite,
                borderRadius: BorderRadius.circular(
                  style.layout.md,
                ),
                boxShadow: [
                  BoxShadow(
                    color: style.color.shadowMedium,
                    blurRadius: style.layout.md,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    DateFormat('E').format(date),
                    style: style.typography.labelMedium.withColor(
                      isSelected
                          ? style.color.textWhite
                          : style.color.textSecondary,
                    ),
                  ),
                  Text(
                    DateFormat('d').format(date),
                    style: style.typography.labelLarge.withColor(
                      isSelected
                          ? style.color.textWhite
                          : style.color.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
