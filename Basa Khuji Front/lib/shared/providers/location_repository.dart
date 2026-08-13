import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/api/location_service.dart';
import '../../core/config/app_config.dart';
import '../../shared/models/models.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.fullApiUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {'Content-Type': 'application/json'},
  ));
  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
    error: true,
  ));
  return dio;
});

final locationServiceProvider = Provider<LocationService>((ref) {
  return LocationService(ref.watch(dioProvider));
});

class LocationRepository {
  final LocationService _service;
  final bool _useMockFallback;

  LocationRepository(this._service, {bool useMockFallback = true})
      : _useMockFallback = useMockFallback;

  Future<List<Division>> getDivisions() async {
    try {
      return await _service.getDivisions();
    } catch (e) {
      if (_useMockFallback) {
        return _getMockDivisions();
      }
      rethrow;
    }
  }

  Future<List<District>> getDistrictsByDivision(int divisionId) async {
    try {
      return await _service.getDistrictsByDivision(divisionId);
    } catch (e) {
      if (_useMockFallback) {
        return _getMockDistrictsByDivision(divisionId);
      }
      rethrow;
    }
  }

  Future<List<Thana>> getThanasByDistrict(int districtId) async {
    try {
      return await _service.getThanasByDistrict(districtId);
    } catch (e) {
      if (_useMockFallback) {
        return _getMockThanasByDistrict(districtId);
      }
      rethrow;
    }
  }

  Future<List<Area>> getAreasByThana(int thanaId) async {
    try {
      return await _service.getAreasByThana(thanaId);
    } catch (e) {
      if (_useMockFallback) {
        return _getMockAreasByThana(thanaId);
      }
      rethrow;
    }
  }

  // Mock fallback data (matches backend structure)
  List<Division> _getMockDivisions() => const [
    Division(id: 1, nameEn: 'Dhaka', nameBn: 'ঢাকা'),
    Division(id: 2, nameEn: 'Chittagong', nameBn: 'চট্টগ্রাম'),
    Division(id: 3, nameEn: 'Rajshahi', nameBn: 'রাজশাহী'),
    Division(id: 4, nameEn: 'Khulna', nameBn: 'খুলনা'),
    Division(id: 5, nameEn: 'Barisal', nameBn: 'বরিশাল'),
    Division(id: 6, nameEn: 'Sylhet', nameBn: 'সিলেট'),
    Division(id: 7, nameEn: 'Rangpur', nameBn: 'রংপুর'),
    Division(id: 8, nameEn: 'Mymensingh', nameBn: 'ময়মনসিংহ'),
  ];

  List<District> _getMockDistrictsByDivision(int divisionId) {
    const all = [
      District(id: 1, divisionId: 1, nameEn: 'Dhaka', nameBn: 'ঢাকা'),
      District(id: 2, divisionId: 1, nameEn: 'Gazipur', nameBn: 'গাজীপুর'),
      District(id: 3, divisionId: 1, nameEn: 'Narayanganj', nameBn: 'নারায়ণগঞ্জ'),
      District(id: 4, divisionId: 1, nameEn: 'Tangail', nameBn: 'টাঙ্গাইল'),
      District(id: 5, divisionId: 2, nameEn: 'Chittagong', nameBn: 'চট্টগ্রাম'),
      District(id: 6, divisionId: 2, nameEn: "Cox's Bazar", nameBn: 'কক্সবাজার'),
      District(id: 7, divisionId: 2, nameEn: 'Comilla', nameBn: 'কুমিল্লা'),
      District(id: 8, divisionId: 3, nameEn: 'Rajshahi', nameBn: 'রাজশাহী'),
      District(id: 9, divisionId: 3, nameEn: 'Bogura', nameBn: 'বগুড়া'),
      District(id: 10, divisionId: 3, nameEn: 'Pabna', nameBn: 'পাবনা'),
      District(id: 11, divisionId: 4, nameEn: 'Khulna', nameBn: 'খুলনা'),
      District(id: 12, divisionId: 5, nameEn: 'Barisal', nameBn: 'বরিশাল'),
      District(id: 13, divisionId: 6, nameEn: 'Sylhet', nameBn: 'সিলেট'),
      District(id: 14, divisionId: 7, nameEn: 'Rangpur', nameBn: 'রংপুর'),
      District(id: 15, divisionId: 8, nameEn: 'Mymensingh', nameBn: 'ময়মনসিংহ'),
    ];
    return all.where((d) => d.divisionId == divisionId).toList();
  }

  List<Thana> _getMockThanasByDistrict(int districtId) {
    const all = [
      Thana(id: 1, districtId: 1, nameEn: 'Dhanmondi', nameBn: 'ধানমন্ডি'),
      Thana(id: 2, districtId: 1, nameEn: 'Gulshan', nameBn: 'গুলশান'),
      Thana(id: 3, districtId: 1, nameEn: 'Banani', nameBn: 'বনানী'),
      Thana(id: 4, districtId: 1, nameEn: 'Uttara', nameBn: 'উত্তরা'),
      Thana(id: 5, districtId: 1, nameEn: 'Mirpur', nameBn: 'মিরপুর'),
      Thana(id: 6, districtId: 1, nameEn: 'Mohammadpur', nameBn: 'মোহাম্মদপুর'),
      Thana(id: 7, districtId: 1, nameEn: 'Khilgaon', nameBn: 'খিলগাঁও'),
      Thana(id: 8, districtId: 1, nameEn: 'Rampura', nameBn: 'রামপুরা'),
      Thana(id: 9, districtId: 2, nameEn: 'Gazipur Sadar', nameBn: 'গাজীপুর সদর'),
      Thana(id: 10, districtId: 2, nameEn: 'Tongi', nameBn: 'টঙ্গি'),
      Thana(id: 11, districtId: 3, nameEn: 'Narayanganj Sadar', nameBn: 'নারায়ণগঞ্জ সদর'),
      Thana(id: 12, districtId: 5, nameEn: 'Kotwali', nameBn: 'কোতোয়ালি'),
      Thana(id: 13, districtId: 5, nameEn: 'Pahartali', nameBn: 'পাহাড়তলী'),
      Thana(id: 14, districtId: 5, nameEn: 'Khulshi', nameBn: 'খুলশি'),
    ];
    return all.where((t) => t.districtId == districtId).toList();
  }

  List<Area> _getMockAreasByThana(int thanaId) => const [];
}

final locationRepositoryProvider = Provider<LocationRepository>((ref) {
  return LocationRepository(
    ref.watch(locationServiceProvider),
    useMockFallback: true, // Set to false when backend is ready
  );
});