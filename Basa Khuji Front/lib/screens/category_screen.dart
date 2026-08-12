import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../l10n/app_localizations.dart';
import '../core/theme/app_spacing.dart';

class CategoryScreen extends ConsumerWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    final categories = [
      (l10n.categoryApartment, Icons.apartment_outlined, 245, 'apartment'),
      (l10n.categoryHouse, Icons.house_outlined, 89, 'house'),
      (l10n.categoryCommercial, Icons.business_outlined, 12, 'commercial'),
      (l10n.categoryLand, Icons.landscape_outlined, 67, 'land'),
      (l10n.categoryRoom, Icons.meeting_room_outlined, 234, 'room'),
      (l10n.categoryHostel, Icons.hotel_outlined, 45, 'hostel'),
    ];

    return Scaffold(
      appBar: AppBar(title: Text(l10n.categoryTitle)),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.md),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.1,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final (title, icon, count, type) = categories[index];
            return Card(
              child: InkWell(
                onTap: () => context.go('/?category=$type'),
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: EdgeInsets.all(AppSpacing.md),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon, size: 48, color: theme.colorScheme.primary),
                      SizedBox(height: AppSpacing.sm),
                      Text(
                        title,
                        style: theme.textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: AppSpacing.xs),
                      Text(
                        l10n.categoryAvailable(count),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}