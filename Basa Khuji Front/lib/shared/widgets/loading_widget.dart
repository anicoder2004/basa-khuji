import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../../core/theme/app_spacing.dart';

class LoadingWidget extends StatelessWidget {
  final String? message;
  final double strokeWidth;

  const LoadingWidget({
    super.key,
    this.message,
    this.strokeWidth = 3,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final label = message ?? l10n.loading;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(strokeWidth: strokeWidth),
          SizedBox(height: AppSpacing.md),
          Text(
            label,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}