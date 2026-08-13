// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionImpl _$$DivisionImplFromJson(Map json) => $checkedCreate(
      r'_$DivisionImpl',
      json,
      ($checkedConvert) {
        final val = _$DivisionImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          nameEn: $checkedConvert('bivNam', (v) => v as String),
          nameBn: $checkedConvert('bivBnNam', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'nameEn': 'bivNam', 'nameBn': 'bivBnNam'},
    );

Map<String, dynamic> _$$DivisionImplToJson(_$DivisionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bivNam': instance.nameEn,
      'bivBnNam': instance.nameBn,
    };

_$DistrictImpl _$$DistrictImplFromJson(Map json) => $checkedCreate(
      r'_$DistrictImpl',
      json,
      ($checkedConvert) {
        final val = _$DistrictImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          divisionId: $checkedConvert('div_id', (v) => (v as num).toInt()),
          nameEn: $checkedConvert('jelaNam', (v) => v as String),
          nameBn: $checkedConvert('jelaBnNam', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'divisionId': 'div_id',
        'nameEn': 'jelaNam',
        'nameBn': 'jelaBnNam'
      },
    );

Map<String, dynamic> _$$DistrictImplToJson(_$DistrictImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'div_id': instance.divisionId,
      'jelaNam': instance.nameEn,
      'jelaBnNam': instance.nameBn,
    };

_$ThanaImpl _$$ThanaImplFromJson(Map json) => $checkedCreate(
      r'_$ThanaImpl',
      json,
      ($checkedConvert) {
        final val = _$ThanaImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          districtId: $checkedConvert('dist_id', (v) => (v as num).toInt()),
          nameEn: $checkedConvert('thanaNam', (v) => v as String),
          nameBn: $checkedConvert('thanaBnNam', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'districtId': 'dist_id',
        'nameEn': 'thanaNam',
        'nameBn': 'thanaBnNam'
      },
    );

Map<String, dynamic> _$$ThanaImplToJson(_$ThanaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dist_id': instance.districtId,
      'thanaNam': instance.nameEn,
      'thanaBnNam': instance.nameBn,
    };

_$AreaImpl _$$AreaImplFromJson(Map json) => $checkedCreate(
      r'_$AreaImpl',
      json,
      ($checkedConvert) {
        final val = _$AreaImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          thanaId: $checkedConvert('thana_id', (v) => (v as num).toInt()),
          nameEn: $checkedConvert('name_en', (v) => v as String),
          nameBn: $checkedConvert('name_bn', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'thanaId': 'thana_id',
        'nameEn': 'name_en',
        'nameBn': 'name_bn'
      },
    );

Map<String, dynamic> _$$AreaImplToJson(_$AreaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thana_id': instance.thanaId,
      'name_en': instance.nameEn,
      'name_bn': instance.nameBn,
    };

_$LocationImpl _$$LocationImplFromJson(Map json) => $checkedCreate(
      r'_$LocationImpl',
      json,
      ($checkedConvert) {
        final val = _$LocationImpl(
          division: $checkedConvert('division',
              (v) => Division.fromJson(Map<String, dynamic>.from(v as Map))),
          district: $checkedConvert('district',
              (v) => District.fromJson(Map<String, dynamic>.from(v as Map))),
          thana: $checkedConvert('thana',
              (v) => Thana.fromJson(Map<String, dynamic>.from(v as Map))),
          area: $checkedConvert(
              'area',
              (v) => v == null
                  ? null
                  : Area.fromJson(Map<String, dynamic>.from(v as Map))),
          areaNameEn: $checkedConvert('area_name_en', (v) => v as String?),
          areaNameBn: $checkedConvert('area_name_bn', (v) => v as String?),
          latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          longitude:
              $checkedConvert('longitude', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {
        'areaNameEn': 'area_name_en',
        'areaNameBn': 'area_name_bn'
      },
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) {
  final val = <String, dynamic>{
    'division': instance.division.toJson(),
    'district': instance.district.toJson(),
    'thana': instance.thana.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('area', instance.area?.toJson());
  writeNotNull('area_name_en', instance.areaNameEn);
  writeNotNull('area_name_bn', instance.areaNameBn);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  return val;
}
