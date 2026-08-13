import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../../core/theme/app_spacing.dart';
import 'app_button.dart';

class EmptyStateWidget extends StatelessWidget {
  final String title;
  final String? description;
  final VoidCallback? onAction;
  final String? actionLabel;
  final IconData icon;

  const EmptyStateWidget({
    super.key,
    required this.title,
    this.description,
    this.onAction,
    this.actionLabel,
    this.icon = Icons.inbox_outlined,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);

    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 72,
              color: theme.colorScheme.primary,
            ),
            SizedBox(height: AppSpacing.lg),
            Text(
              title,
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            if (description != null) ...[
              SizedBox(height: AppSpacing.sm),
              Text(
                description!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
            if (onAction != null) ...[
              SizedBox(height: AppSpacing.lg),
              AppButton(
                label: actionLabel ?? l10n.retry,
                icon: Icons.refresh,
                onPressed: onAction,
                size: AppButtonSize.small,
                fullWidth: false,
              ),
            ],
          ],
        ),
      ),
    );
  }
}