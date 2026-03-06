import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class HomeUserGreeting extends StatelessWidget {
  const HomeUserGreeting({
    required this.name,
    super.key,
  });

  final String? name;

  static final _dateFormatter = DateFormat('d MMM');

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    final date = _dateFormatter.format(DateTime.now());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Hello, $name',
          style: style.typography.titleMedium.withColor(
            style.color.textPrimary,
          ),
        ),
        Text(
          'Today $date',
          style: style.typography.bodyMedium.withColor(
            style.color.textSecondary,
          ),
        ),
      ],
    );
  }
}
