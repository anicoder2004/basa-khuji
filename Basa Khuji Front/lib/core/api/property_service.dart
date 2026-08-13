import 'package:dio/dio.dart';

import '../../shared/models/models.dart';

class PropertyService {
  final Dio _dio;

  PropertyService(this._dio);

  /// Fetches a paginated list of properties matching [filter].
  ///
  /// Backend contract (once implemented in Spring Boot):
  /// `GET /v1/basakhuji/properties` with query params produced by
  /// `PropertyFilterX.toQueryParams()`.
  Future<PaginatedResponse<Property>> getProperties(
    PropertyFilter filter,
  ) async {
    final response = await _dio.get(
      '/v1/basakhuji/properties',
      queryParameters: filter.toQueryParams(),
    );
    return PaginatedResponse.fromJson(
      response.data as Map<String, dynamic>,
      Property.fromJson,
    );
  }
}