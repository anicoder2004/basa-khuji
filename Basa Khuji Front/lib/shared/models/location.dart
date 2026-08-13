import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

/// Field names below map the frontend's clean `nameEn`/`nameBn` naming to the
/// backend's legacy Bengali-transliteration DTO fields (`bivNam`, `bivBnNam`,
/// `jelaNam`, `thanaNam`, ...). See `LocationDtos.kt` in the backend.
@freezed
class Division with _$Division {
  const factory Division({
    required int id,
    @JsonKey(name: 'bivNam') required String nameEn,
    @JsonKey(name: 'bivBnNam') required String nameBn,
  }) = _Division;

  factory Division.fromJson(Map<String, dynamic> json) => _$DivisionFromJson(json);
}

@freezed
class District with _$District {
  const factory District({
    required int id,
    @JsonKey(name: 'div_id') required int divisionId,
    @JsonKey(name: 'jelaNam') required String nameEn,
    @JsonKey(name: 'jelaBnNam') required String nameBn,
  }) = _District;

  factory District.fromJson(Map<String, dynamic> json) => _$DistrictFromJson(json);
}

@freezed
class Thana with _$Thana {
  const factory Thana({
    required int id,
    @JsonKey(name: 'dist_id') required int districtId,
    @JsonKey(name: 'thanaNam') required String nameEn,
    @JsonKey(name: 'thanaBnNam') required String nameBn,
  }) = _Thana;

  factory Thana.fromJson(Map<String, dynamic> json) => _$ThanaFromJson(json);
}

@freezed
class Area with _$Area {
  const factory Area({
    required int id,
    required int thanaId,
    required String nameEn,
    required String nameBn,
  }) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required Division division,
    required District district,
    required Thana thana,
    Area? area,
    String? areaNameEn,
    String? areaNameBn,
    double? latitude,
    double? longitude,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}