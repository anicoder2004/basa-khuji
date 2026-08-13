import 'package:dio/dio.dart';

import '../../shared/models/models.dart';

class LocationService {
  final Dio _dio;

  LocationService(this._dio);

  Future<List<Division>> getDivisions() async {
    final response = await _dio.get('/v1/basakhuji/locations/bivags');
    return (response.data as List).map((e) => Division.fromJson(e)).toList();
  }

  Future<List<District>> getDistrictsByDivision(int divisionId) async {
    final response = await _dio.get(
      '/v1/basakhuji/locations/jelas',
      queryParameters: {'divId': divisionId},
    );
    return (response.data as List).map((e) => District.fromJson(e)).toList();
  }

  Future<List<Thana>> getThanasByDistrict(int districtId) async {
    final response = await _dio.get(
      '/v1/basakhuji/locations/thanas',
      queryParameters: {'distId': districtId},
    );
    return (response.data as List).map((e) => Thana.fromJson(e)).toList();
  }

  Future<List<Area>> getAreasByThana(int thanaId) async {
    final response = await _dio.get(
      '/v1/basakhuji/locations/areas',
      queryParameters: {'thanaId': thanaId},
    );
    return (response.data as List).map((e) => Area.fromJson(e)).toList();
  }
}