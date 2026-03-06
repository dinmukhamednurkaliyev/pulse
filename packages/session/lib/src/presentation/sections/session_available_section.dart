import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:session/session.dart';

class SessionAvailableSection extends StatelessWidget {
  const SessionAvailableSection({
    required this.sessions,
    super.key,
  });

  final List<SessionCardViewModel> sessions;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: style.layout.sm,
      children: [
        Text(
          'Available Sessions',
          style: style.typography.headlineSmall.withColor(
            style.color.textPrimary,
          ),
        ),
        Text(
          'Choose your workout session',
          style: style.typography.bodyLarge.withColor(style.color.textPrimary),
        ),
        Column(
          spacing: style.layout.sm,
          children: sessions
              .map(
                (item) => SessionCard(
                  session: item,
                  onTap: () {},
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
