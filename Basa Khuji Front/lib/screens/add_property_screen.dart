import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../l10n/app_localizations.dart';
import '../core/theme/app_spacing.dart';

class AddPropertyScreen extends ConsumerWidget {
  const AddPropertyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.addPropertyTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_home_outlined,
              size: 80,
              color: theme.colorScheme.primary.withOpacity(0.5),
            ),
            SizedBox(height: AppSpacing.lg),
            Text(
              l10n.addPropertyTitle,
              style: theme.textTheme.headlineMedium,
            ),
            SizedBox(height: AppSpacing.md),
            Text(
              'Add Property Screen - 4 Step Form',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}