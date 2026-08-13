// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map json) => $checkedCreate(
      r'_$UserImpl',
      json,
      ($checkedConvert) {
        final val = _$UserImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          avatarUrl: $checkedConvert('avatar_url', (v) => v as String?),
          bio: $checkedConvert('bio', (v) => v as String?),
          createdAt: $checkedConvert('created_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          isVerified:
              $checkedConvert('is_verified', (v) => v as bool? ?? false),
          rating: $checkedConvert('rating', (v) => (v as num?)?.toDouble()),
          reviewCount:
              $checkedConvert('review_count', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'avatarUrl': 'avatar_url',
        'createdAt': 'created_at',
        'isVerified': 'is_verified',
        'reviewCount': 'review_count'
      },
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'email': instance.email,
    'phone': instance.phone,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatar_url', instance.avatarUrl);
  writeNotNull('bio', instance.bio);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  val['is_verified'] = instance.isVerified;
  writeNotNull('rating', instance.rating);
  writeNotNull('review_count', instance.reviewCount);
  return val;
}
