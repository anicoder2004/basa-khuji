// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyImpl _$$PropertyImplFromJson(Map json) => $checkedCreate(
      r'_$PropertyImpl',
      json,
      ($checkedConvert) {
        final val = _$PropertyImpl(
          id: $checkedConvert('id', (v) => v as String),
          titleEn: $checkedConvert('title_en', (v) => v as String),
          titleBn: $checkedConvert('title_bn', (v) => v as String),
          descriptionEn: $checkedConvert('description_en', (v) => v as String),
          descriptionBn: $checkedConvert('description_bn', (v) => v as String),
          price: $checkedConvert('price', (v) => (v as num).toDouble()),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$PropertyTypeEnumMap, v)),
          bedrooms: $checkedConvert('bedrooms', (v) => (v as num).toInt()),
          bathrooms: $checkedConvert('bathrooms', (v) => (v as num).toInt()),
          areaSqft: $checkedConvert('area_sqft', (v) => (v as num).toDouble()),
          images: $checkedConvert('images',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          location: $checkedConvert('location',
              (v) => Location.fromJson(Map<String, dynamic>.from(v as Map))),
          owner: $checkedConvert(
              'owner', (v) => _userFromJson(v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$PropertyStatusEnumMap, v)),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
          isFeatured:
              $checkedConvert('is_featured', (v) => v as bool? ?? false),
          isFavorite:
              $checkedConvert('is_favorite', (v) => v as bool? ?? false),
          amenities: $checkedConvert(
              'amenities',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e),
                  )),
        );
        return val;
      },
      fieldKeyMap: const {
        'titleEn': 'title_en',
        'titleBn': 'title_bn',
        'descriptionEn': 'description_en',
        'descriptionBn': 'description_bn',
        'areaSqft': 'area_sqft',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
        'isFeatured': 'is_featured',
        'isFavorite': 'is_favorite'
      },
    );

Map<String, dynamic> _$$PropertyImplToJson(_$PropertyImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title_en': instance.titleEn,
    'title_bn': instance.titleBn,
    'description_en': instance.descriptionEn,
    'description_bn': instance.descriptionBn,
    'price': instance.price,
    'type': _$PropertyTypeEnumMap[instance.type]!,
    'bedrooms': instance.bedrooms,
    'bathrooms': instance.bathrooms,
    'area_sqft': instance.areaSqft,
    'images': instance.images,
    'location': instance.location.toJson(),
    'owner': _userToJson(instance.owner),
    'status': _$PropertyStatusEnumMap[instance.status]!,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt.toIso8601String(),
    'is_featured': instance.isFeatured,
    'is_favorite': instance.isFavorite,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amenities', instance.amenities);
  return val;
}

const _$PropertyTypeEnumMap = {
  PropertyType.apartment: 'apartment',
  PropertyType.house: 'house',
  PropertyType.commercial: 'commercial',
  PropertyType.land: 'land',
  PropertyType.room: 'room',
  PropertyType.hostel: 'hostel',
};

const _$PropertyStatusEnumMap = {
  PropertyStatus.active: 'active',
  PropertyStatus.rented: 'rented',
  PropertyStatus.draft: 'draft',
  PropertyStatus.inactive: 'inactive',
};

_$PropertyFilterImpl _$$PropertyFilterImplFromJson(Map json) => $checkedCreate(
      r'_$PropertyFilterImpl',
      json,
      ($checkedConvert) {
        final val = _$PropertyFilterImpl(
          query: $checkedConvert('query', (v) => v as String?),
          divisionId:
              $checkedConvert('division_id', (v) => (v as num?)?.toInt()),
          districtId:
              $checkedConvert('district_id', (v) => (v as num?)?.toInt()),
          thanaId: $checkedConvert('thana_id', (v) => (v as num?)?.toInt()),
          type: $checkedConvert(
              'type', (v) => $enumDecodeNullable(_$PropertyTypeEnumMap, v)),
          minPrice:
              $checkedConvert('min_price', (v) => (v as num?)?.toDouble()),
          maxPrice:
              $checkedConvert('max_price', (v) => (v as num?)?.toDouble()),
          minBedrooms:
              $checkedConvert('min_bedrooms', (v) => (v as num?)?.toInt()),
          maxBedrooms:
              $checkedConvert('max_bedrooms', (v) => (v as num?)?.toInt()),
          minBathrooms:
              $checkedConvert('min_bathrooms', (v) => (v as num?)?.toInt()),
          maxBathrooms:
              $checkedConvert('max_bathrooms', (v) => (v as num?)?.toInt()),
          minArea: $checkedConvert('min_area', (v) => (v as num?)?.toDouble()),
          maxArea: $checkedConvert('max_area', (v) => (v as num?)?.toDouble()),
          amenities: $checkedConvert('amenities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$PropertyStatusEnumMap, v)),
          sortBy: $checkedConvert('sort_by', (v) => v as String?),
          sortAscending: $checkedConvert('sort_ascending', (v) => v as bool?),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt() ?? 1),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
        );
        return val;
      },
      fieldKeyMap: const {
        'divisionId': 'division_id',
        'districtId': 'district_id',
        'thanaId': 'thana_id',
        'minPrice': 'min_price',
        'maxPrice': 'max_price',
        'minBedrooms': 'min_bedrooms',
        'maxBedrooms': 'max_bedrooms',
        'minBathrooms': 'min_bathrooms',
        'maxBathrooms': 'max_bathrooms',
        'minArea': 'min_area',
        'maxArea': 'max_area',
        'sortBy': 'sort_by',
        'sortAscending': 'sort_ascending'
      },
    );

Map<String, dynamic> _$$PropertyFilterImplToJson(
    _$PropertyFilterImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('query', instance.query);
  writeNotNull('division_id', instance.divisionId);
  writeNotNull('district_id', instance.districtId);
  writeNotNull('thana_id', instance.thanaId);
  writeNotNull('type', _$PropertyTypeEnumMap[instance.type]);
  writeNotNull('min_price', instance.minPrice);
  writeNotNull('max_price', instance.maxPrice);
  writeNotNull('min_bedrooms', instance.minBedrooms);
  writeNotNull('max_bedrooms', instance.maxBedrooms);
  writeNotNull('min_bathrooms', instance.minBathrooms);
  writeNotNull('max_bathrooms', instance.maxBathrooms);
  writeNotNull('min_area', instance.minArea);
  writeNotNull('max_area', instance.maxArea);
  writeNotNull('amenities', instance.amenities);
  writeNotNull('status', _$PropertyStatusEnumMap[instance.status]);
  writeNotNull('sort_by', instance.sortBy);
  writeNotNull('sort_ascending', instance.sortAscending);
  val['page'] = instance.page;
  val['limit'] = instance.limit;
  return val;
}
