import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/api/property_service.dart';
import '../../shared/models/mock_properties.dart';
import '../../shared/models/models.dart';
import 'location_repository.dart';

final propertyServiceProvider = Provider<PropertyService>((ref) {
  return PropertyService(ref.watch(dioProvider));
});

class PropertyRepository {
  final PropertyService _service;
  final bool _useMockFallback;

  PropertyRepository(this._service, {bool useMockFallback = true})
      : _useMockFallback = useMockFallback;

  Future<PaginatedResponse<Property>> getProperties(
    PropertyFilter filter,
  ) async {
    try {
      return await _service.getProperties(filter);
    } catch (e) {
      if (_useMockFallback) {
        return _getMockProperties(filter);
      }
      rethrow;
    }
  }

  // Mock fallback with in-memory filter/sort/pagination
  Future<PaginatedResponse<Property>> _getMockProperties(
    PropertyFilter filter,
  ) async {
    // Small delay to imitate network latency so the loading state is visible
    await Future<void>.delayed(const Duration(milliseconds: 600));

    var list = mockProperties.where((p) => p.status == PropertyStatus.active).toList();

    // Keyword/text search
    final query = filter.query?.trim().toLowerCase();
    if (query != null && query.isNotEmpty) {
      list = list.where((p) {
        return p.titleEn.toLowerCase().contains(query) ||
            p.titleBn.contains(query) ||
            p.location.areaNameEn?.toLowerCase().contains(query) == true ||
            p.location.thana.nameEn.toLowerCase().contains(query);
      }).toList();
    }

    // Property type
    if (filter.type != null) {
      list = list.where((p) => p.type == filter.type).toList();
    }

    // Price range
    if (filter.minPrice != null) {
      list = list.where((p) => p.price >= filter.minPrice!).toList();
    }
    if (filter.maxPrice != null) {
      list = list.where((p) => p.price <= filter.maxPrice!).toList();
    }

    // Bedrooms
    if (filter.minBedrooms != null) {
      list = list.where((p) => p.bedrooms >= filter.minBedrooms!).toList();
    }
    if (filter.maxBedrooms != null) {
      list = list.where((p) => p.bedrooms <= filter.maxBedrooms!).toList();
    }

    // Sorting
    final sortBy = filter.sortBy;
    final ascending = filter.sortAscending ?? true;
    if (sortBy != null && sortBy.isNotEmpty) {
      list.sort((a, b) {
        int cmp;
        switch (sortBy) {
          case 'price':
            cmp = a.price.compareTo(b.price);
            break;
          case 'area':
            cmp = a.areaSqft.compareTo(b.areaSqft);
            break;
          case 'created_at':
          default:
            cmp = a.createdAt.compareTo(b.createdAt);
            break;
        }
        return ascending ? cmp : -cmp;
      });
    }

    // Pagination
    final totalItems = list.length;
    final limit = filter.limit;
    final totalPages = (totalItems / limit).ceil().clamp(1, 1 << 31).toInt();
    final page = filter.page.clamp(1, totalPages).toInt();
    final start = (page - 1) * limit;
    final end = (start + limit).clamp(0, totalItems).toInt();

    return PaginatedResponse<Property>(
      data: list.sublist(start, end),
      currentPage: page,
      totalPages: totalPages,
      totalItems: totalItems,
      itemsPerPage: limit,
      hasNextPage: page < totalPages,
      hasPreviousPage: page > 1,
    );
  }
}

final propertyRepositoryProvider = Provider<PropertyRepository>((ref) {
  return PropertyRepository(
    ref.watch(propertyServiceProvider),
    useMockFallback: true, // Set to false when backend properties API is ready
  );
});

/// The current search/filter/sort state for the home list
final propertyFilterProvider =
    StateNotifierProvider<PropertyFilterNotifier, PropertyFilter>((ref) {
  return PropertyFilterNotifier();
});

class PropertyFilterNotifier extends StateNotifier<PropertyFilter> {
  PropertyFilterNotifier() : super(const PropertyFilter());

  void setQuery(String? value) {
    state = state.copyWith(query: value, page: 1);
  }

  void setType(PropertyType? type) {
    state = state.copyWith(type: type, page: 1);
  }

  void applyFilters(PropertyFilter filters) {
    state = state.copyWith(
      type: filters.type,
      minPrice: filters.minPrice,
      maxPrice: filters.maxPrice,
      minBedrooms: filters.minBedrooms,
      maxBedrooms: filters.maxBedrooms,
      divisionId: filters.divisionId,
      districtId: filters.districtId,
      thanaId: filters.thanaId,
      page: 1,
    );
  }

  void applySort({required String sortBy, required bool ascending}) {
    state = state.copyWith(
      sortBy: sortBy,
      sortAscending: ascending,
      page: 1,
    );
  }

  void reset() {
    state = const PropertyFilter();
  }

  void nextPage() {
    state = state.copyWith(page: state.page + 1);
  }

  void previousPage() {
    state = state.copyWith(page: (state.page - 1).clamp(1, 1 << 31).toInt());
  }
}

/// Async paginated property list that reacts to filter changes
final propertyListProvider =
    AsyncNotifierProvider<PropertyListNotifier, PaginatedResponse<Property>>(
  PropertyListNotifier.new,
);

class PropertyListNotifier extends AsyncNotifier<PaginatedResponse<Property>> {
  @override
  Future<PaginatedResponse<Property>> build() async {
    final filter = ref.watch(propertyFilterProvider);
    return ref.watch(propertyRepositoryProvider).getProperties(filter);
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final filter = ref.read(propertyFilterProvider);
      return ref.read(propertyRepositoryProvider).getProperties(filter);
    });
  }
}