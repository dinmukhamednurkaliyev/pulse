import 'package:appearance/src/presentation/appearance_system.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    super.key,
    this.title = 'Nothing found',
    this.message,
    this.icon = Icons.inbox_outlined,
    this.onAction,
    this.actionLabel,
  });
  final String title;
  final String? message;
  final IconData? icon;
  final VoidCallback? onAction;
  final String? actionLabel;

  @override
  Widget build(BuildContext context) {
    final style = context.style;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 64, color: style.color.iconGrey),
          const SizedBox(height: 16),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          if (message != null) ...[
            const SizedBox(height: 8),
            Text(
              message!,
              style: style.typography.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
          if (onAction != null) ...[
            const SizedBox(height: 24),
            FilledButton(
              onPressed: onAction,
              child: Text(actionLabel ?? 'Add'),
            ),
          ],
        ],
      ),
    );
  }
}
