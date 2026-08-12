import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../l10n/app_localizations.dart';
import '../core/theme/app_spacing.dart';
import '../core/utils/responsive.dart';
import '../shared/models/enums.dart';
import '../shared/models/property.dart';
import '../shared/providers/property_repository.dart';
import '../shared/widgets/widgets.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _HomeScreenBody();
  }
}

class _HomeScreenBody extends ConsumerStatefulWidget {
  const _HomeScreenBody();

  @override
  ConsumerState<_HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends ConsumerState<_HomeScreenBody> {
  final _searchController = TextEditingController();
  Timer? _debounce;

  /// Guards against re-applying the `?category=` query on every rebuild.
  String? _appliedCategory;

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    // Wire "category" screen → home filter (e.g. /?category=apartment)
    _applyCategoryFromRoute();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list_outlined),
            onPressed: () => _openFilterSheet(l10n),
            tooltip: l10n.filters,
          ),
          _buildSortMenu(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.horizontalPadding,
          vertical: AppSpacing.md,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search field (Phase 7.2)
            AppTextField(
              controller: _searchController,
              hint: l10n.searchHint,
              prefixIcon: Icons.search,
              textInputAction: TextInputAction.search,
              onChanged: _onSearchChanged,
            ),
            SizedBox(height: AppSpacing.md),
            // Loading / error / empty / grid (Phase 7.4)
            Expanded(child: _buildListBody()),
          ],
        ),
      ),
    );
  }

  // --- Search (debounced) ----------------------------------------------------

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 350), () {
      ref.read(propertyFilterProvider.notifier).setQuery(value.trim());
    });
  }

  // --- Filters & sorting ------------------------------------------------------

  Future<void> _openFilterSheet(AppLocalizations l10n) async {
    final current = ref.read(propertyFilterProvider);
    final result = await showPropertyFilterSheet(
      context: context,
      initialFilter: current,
    );
    if (result != null) {
      ref.read(propertyFilterProvider.notifier).applyFilters(result);
    }
  }

  Widget _buildSortMenu() {
    final l10n = AppLocalizations.of(context);
    final filter = ref.read(propertyFilterProvider);

    final options = <({String label, String sortBy, bool ascending})>[
      (label: l10n.sortNewest, sortBy: 'created_at', ascending: false),
      (label: l10n.sortOldest, sortBy: 'created_at', ascending: true),
      (label: l10n.sortPriceLowToHigh, sortBy: 'price', ascending: true),
      (label: l10n.sortPriceHighToLow, sortBy: 'price', ascending: false),
      (label: l10n.sortAreaLargeToSmall, sortBy: 'area', ascending: false),
    ];

    return PopupMenuButton<_SortOption>(
      icon: const Icon(Icons.sort),
      tooltip: l10n.sortBy,
      onSelected: (option) {
        ref.read(propertyFilterProvider.notifier)
            .applySort(sortBy: option.sortBy, ascending: option.ascending);
      },
      itemBuilder: (context) => [
        for (final o in options)
          CheckedPopupMenuItem<_SortOption>(
            value: _SortOption(o.sortBy, o.ascending),
            checked: filter.sortBy == o.sortBy &&
                (filter.sortAscending ?? true) == o.ascending,
            child: Text(o.label),
          ),
      ],
    );
  }

  // --- Category route wiring ---------------------------------------------------

  void _applyCategoryFromRoute() {
    final category =
        GoRouterState.of(context).uri.queryParameters['category'];
    if (category != null && category != _appliedCategory) {
      _appliedCategory = category;
      ref.read(propertyFilterProvider.notifier)
          .setType(PropertyType.fromString(category));
    }
  }

  // --- List body ----------------------------------------------------------------

  Widget _buildListBody() {
    final l10n = AppLocalizations.of(context);
    final list = ref.watch(propertyListProvider);

    return list.when(
      skipLoadingOnRefresh: true,
      skipError: true,
      loading: () => const LoadingWidget(),
      error: (error, stack) => ErrorView(
        message: l10n.error,
        onRetry: () => ref.read(propertyListProvider.notifier).refresh(),
      ),
      data: (paginated) {
        final notifier = ref.read(propertyListProvider.notifier);
        return RefreshIndicator(
          onRefresh: notifier.refresh,
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              if (paginated.data.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: EmptyStateWidget(
                    title: l10n.noPropertiesFound,
                    description: l10n.noPropertiesFoundDesc,
                    actionLabel: l10n.retry,
                    onAction: notifier.refresh,
                  ),
                )
              else ...[
                SliverPadding(
                  padding: EdgeInsets.all(AppSpacing.xs),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: context.gridCrossAxisCount,
                      childAspectRatio: context.gridChildAspectRatio,
                      crossAxisSpacing: AppSpacing.xs,
                      mainAxisSpacing: AppSpacing.xs,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final property = paginated.data[index];
                        return PropertyCard(
                          property: property,
                          isFavorite: property.isFavorite,
                        );
                      },
                      childCount: paginated.data.length,
                    ),
                  ),
                ),
                if (paginated.totalPages > 1)
                  SliverToBoxAdapter(
                    child: _PaginationBar(paginated: paginated),
                  ),
              ],
            ],
          ),
        );
      },
    );
  }
}

class _SortOption {
  final String sortBy;
  final bool ascending;

  const _SortOption(this.sortBy, this.ascending);
}

/// Previous/next paging controls (Phase 7.3).
class _PaginationBar extends ConsumerWidget {
  final PaginatedResponse<Property> paginated;

  const _PaginationBar({required this.paginated});

  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    final start = (paginated.currentPage - 1) * paginated.itemsPerPage + 1;
    final end =
        (paginated.currentPage * paginated.itemsPerPage)
            .clamp(0, paginated.totalItems);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSpacing.md),
      child: Column(
        children: [
          Text(
            l10n.paginationShowing(start, end, paginated.totalItems),
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          SizedBox(height: AppSpacing.xs),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.chevron_left),
                onPressed: paginated.hasPreviousPage
                    ? () => ref
                        .read(propertyFilterProvider.notifier)
                        .previousPage()
                    : null,
              ),
              Text(
                l10n.paginationPage(
                  paginated.currentPage,
                  paginated.totalPages,
                ),
                style: theme.textTheme.labelMedium,
              ),
              IconButton(
                icon: const Icon(Icons.chevron_right),
                onPressed: paginated.hasNextPage
                    ? () =>
                        ref.read(propertyFilterProvider.notifier).nextPage()
                    : null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}