import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../models/property.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_theme_extension.dart';
import '../../core/theme/app_typography.dart';
import 'app_card.dart';

/// A single property listing card used in the home grid.
///
/// Tapping the card opens the property detail screen. The favorite button is
/// wired to [onFavoriteToggle] (used by the Favorites feature in Phase 4).
class PropertyCard extends StatelessWidget {
  final Property property;
  final VoidCallback? onFavoriteToggle;
  final bool isFavorite;

  const PropertyCard({
    super.key,
    required this.property,
    this.onFavoriteToggle,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isBengali = Localizations.localeOf(context).languageCode == 'bn';

    final title = isBengali ? property.titleBn : property.titleEn;
    final areaName = isBengali
        ? (property.location.areaNameBn ?? property.location.thana.nameBn)
        : (property.location.areaNameEn ?? property.location.thana.nameEn);

    // Use NumberFormat for BDT currency formatting (e.g. ৳25,000)
    final formatter = NumberFormat.currency(symbol: '৳', locale: 'en');

    return AppCard(
      padding: EdgeInsets.zero,
      borderRadius: context.appTheme.propertyImageRadius,
      onTap: () => context.go('/property/${property.id}'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image (full-bleed to the card edge)
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: context.appTheme.propertyImageRadius,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    property.images.isNotEmpty
                        ? property.images.first
                        : 'https://picsum.photos/seed/prop/800/600',
                    fit: BoxFit.cover,
                  ),
                  if (onFavoriteToggle != null)
                    Positioned(
                      top: AppSpacing.xs,
                      right: AppSpacing.xs,
                      child: Material(
                        color: theme.colorScheme.surface.withValues(alpha: 0.85),
                        shape: const CircleBorder(),
                        child: IconButton(
                          icon: Icon(
                            isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isFavorite
                                ? theme.colorScheme.primary
                                : theme.colorScheme.onSurfaceVariant,
                          ),
                          onPressed: onFavoriteToggle,
                          tooltip: isFavorite ? 'Unsave' : 'Save',
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Price
                Text(
                  formatter.format(property.price),
                  style: AppTypography.propertyPrice(),
                ),
                const SizedBox(height: AppSpacing.sm),
                // Title
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.propertyTitle(),
                ),
                const SizedBox(height: AppSpacing.sm),
                // Location
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 14,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        areaName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                // Stats row (beds / baths / sqft)
                Row(
                  children: [
                    _statIcon(
                      Icons.bed_outlined,
                      property.bedrooms.toString(),
                      theme,
                    ),
                    const SizedBox(width: AppSpacing.md),
                    _statIcon(
                      Icons.bathtub_outlined,
                      property.bathrooms.toString(),
                      theme,
                    ),
                    const SizedBox(width: AppSpacing.md),
                    _statIcon(
                      Icons.square_foot_outlined,
                      property.areaSqft.round().toString(),
                      theme,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _statIcon(IconData icon, String label, ThemeData theme) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: theme.colorScheme.onSurfaceVariant),
        const SizedBox(width: 4),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}