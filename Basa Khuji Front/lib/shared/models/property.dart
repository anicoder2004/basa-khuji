import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'enums.dart';
import 'location.dart';
import 'user.dart';

part 'property.freezed.dart';
part 'property.g.dart';

@freezed
class Property with _$Property {
  const factory Property({
    required String id,
    required String titleEn,
    required String titleBn,
    required String descriptionEn,
    required String descriptionBn,
    required double price,
    required PropertyType type,
    required int bedrooms,
    required int bathrooms,
    required double areaSqft,
    required List<String> images,
    required Location location,
    @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
    required User owner,
    required PropertyStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(false) bool isFeatured,
    @Default(false) bool isFavorite,
    Map<String, dynamic>? amenities,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) => _$PropertyFromJson(json);
}

User _userFromJson(Map<String, dynamic> json) => User.fromJson(json);
Map<String, dynamic> _userToJson(User user) => user.toJson();

@freezed
class PropertyFilter with _$PropertyFilter {
  const factory PropertyFilter({
    String? query,
    int? divisionId,
    int? districtId,
    int? thanaId,
    PropertyType? type,
    double? minPrice,
    double? maxPrice,
    int? minBedrooms,
    int? maxBedrooms,
    int? minBathrooms,
    int? maxBathrooms,
    double? minArea,
    double? maxArea,
    List<String>? amenities,
    PropertyStatus? status,
    String? sortBy,
    bool? sortAscending,
    @Default(1) int page,
    @Default(20) int limit,
  }) = _PropertyFilter;

  factory PropertyFilter.fromJson(Map<String, dynamic> json) =>
      _$PropertyFilterFromJson(json);
}

extension PropertyFilterX on PropertyFilter {
  Map<String, dynamic> toQueryParams() {
    final params = <String, dynamic>{
      'page': page,
      'limit': limit,
    };
    if (query != null && query!.isNotEmpty) params['q'] = query;
    if (divisionId != null) params['division_id'] = divisionId;
    if (districtId != null) params['district_id'] = districtId;
    if (thanaId != null) params['thana_id'] = thanaId;
    if (type != null) params['type'] = type!.value;
    if (minPrice != null) params['min_price'] = minPrice;
    if (maxPrice != null) params['max_price'] = maxPrice;
    if (minBedrooms != null) params['min_bedrooms'] = minBedrooms;
    if (maxBedrooms != null) params['max_bedrooms'] = maxBedrooms;
    if (minBathrooms != null) params['min_bathrooms'] = minBathrooms;
    if (maxBathrooms != null) params['max_bathrooms'] = maxBathrooms;
    if (minArea != null) params['min_area'] = minArea;
    if (maxArea != null) params['max_area'] = maxArea;
    if (status != null) params['status'] = status!.value;
    if (sortBy != null) params['sort_by'] = sortBy;
    if (sortAscending != null) params['sort_asc'] = sortAscending;
    return params;
  }
}

@freezed
class PaginatedResponse<T> with _$PaginatedResponse<T> {
  const factory PaginatedResponse({
    required List<T> data,
    required int currentPage,
    required int totalPages,
    required int totalItems,
    required int itemsPerPage,
    @Default(false) bool hasNextPage,
    @Default(false) bool hasPreviousPage,
  }) = _PaginatedResponse<T>;

  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    final dataList = (json['data'] as List<dynamic>?)
            ?.map((e) => fromJsonT(e as Map<String, dynamic>))
            .toList() ??
        [];
    return PaginatedResponse<T>(
      data: dataList,
      currentPage: json['current_page'] as int? ?? json['page'] as int? ?? 1,
      totalPages: json['total_pages'] as int? ?? json['last_page'] as int? ?? 1,
      totalItems: json['total_items'] as int? ?? json['total'] as int? ?? 0,
      itemsPerPage: json['items_per_page'] as int? ?? json['per_page'] as int? ?? 20,
      hasNextPage: json['has_next_page'] as bool? ?? false,
      hasPreviousPage: json['has_previous_page'] as bool? ?? false,
    );
  }
}