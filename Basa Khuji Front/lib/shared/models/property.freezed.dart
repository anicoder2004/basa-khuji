// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Property _$PropertyFromJson(Map<String, dynamic> json) {
  return _Property.fromJson(json);
}

/// @nodoc
mixin _$Property {
  String get id => throw _privateConstructorUsedError;
  String get titleEn => throw _privateConstructorUsedError;
  String get titleBn => throw _privateConstructorUsedError;
  String get descriptionEn => throw _privateConstructorUsedError;
  String get descriptionBn => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  PropertyType get type => throw _privateConstructorUsedError;
  int get bedrooms => throw _privateConstructorUsedError;
  int get bathrooms => throw _privateConstructorUsedError;
  double get areaSqft => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  User get owner => throw _privateConstructorUsedError;
  PropertyStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  Map<String, dynamic>? get amenities => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Property value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Property value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Property value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCopyWith<Property> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res, Property>;
  @useResult
  $Res call(
      {String id,
      String titleEn,
      String titleBn,
      String descriptionEn,
      String descriptionBn,
      double price,
      PropertyType type,
      int bedrooms,
      int bathrooms,
      double areaSqft,
      List<String> images,
      Location location,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) User owner,
      PropertyStatus status,
      DateTime createdAt,
      DateTime updatedAt,
      bool isFeatured,
      bool isFavorite,
      Map<String, dynamic>? amenities});

  $LocationCopyWith<$Res> get location;
  $UserCopyWith<$Res> get owner;
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res, $Val extends Property>
    implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titleEn = null,
    Object? titleBn = null,
    Object? descriptionEn = null,
    Object? descriptionBn = null,
    Object? price = null,
    Object? type = null,
    Object? bedrooms = null,
    Object? bathrooms = null,
    Object? areaSqft = null,
    Object? images = null,
    Object? location = null,
    Object? owner = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isFeatured = null,
    Object? isFavorite = null,
    Object? amenities = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      titleEn: null == titleEn
          ? _value.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String,
      titleBn: null == titleBn
          ? _value.titleBn
          : titleBn // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionBn: null == descriptionBn
          ? _value.descriptionBn
          : descriptionBn // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PropertyType,
      bedrooms: null == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      areaSqft: null == areaSqft
          ? _value.areaSqft
          : areaSqft // ignore: cast_nullable_to_non_nullable
              as double,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get owner {
    return $UserCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyImplCopyWith<$Res>
    implements $PropertyCopyWith<$Res> {
  factory _$$PropertyImplCopyWith(
          _$PropertyImpl value, $Res Function(_$PropertyImpl) then) =
      __$$PropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String titleEn,
      String titleBn,
      String descriptionEn,
      String descriptionBn,
      double price,
      PropertyType type,
      int bedrooms,
      int bathrooms,
      double areaSqft,
      List<String> images,
      Location location,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson) User owner,
      PropertyStatus status,
      DateTime createdAt,
      DateTime updatedAt,
      bool isFeatured,
      bool isFavorite,
      Map<String, dynamic>? amenities});

  @override
  $LocationCopyWith<$Res> get location;
  @override
  $UserCopyWith<$Res> get owner;
}

/// @nodoc
class __$$PropertyImplCopyWithImpl<$Res>
    extends _$PropertyCopyWithImpl<$Res, _$PropertyImpl>
    implements _$$PropertyImplCopyWith<$Res> {
  __$$PropertyImplCopyWithImpl(
      _$PropertyImpl _value, $Res Function(_$PropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titleEn = null,
    Object? titleBn = null,
    Object? descriptionEn = null,
    Object? descriptionBn = null,
    Object? price = null,
    Object? type = null,
    Object? bedrooms = null,
    Object? bathrooms = null,
    Object? areaSqft = null,
    Object? images = null,
    Object? location = null,
    Object? owner = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isFeatured = null,
    Object? isFavorite = null,
    Object? amenities = freezed,
  }) {
    return _then(_$PropertyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      titleEn: null == titleEn
          ? _value.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String,
      titleBn: null == titleBn
          ? _value.titleBn
          : titleBn // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionBn: null == descriptionBn
          ? _value.descriptionBn
          : descriptionBn // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PropertyType,
      bedrooms: null == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      areaSqft: null == areaSqft
          ? _value.areaSqft
          : areaSqft // ignore: cast_nullable_to_non_nullable
              as double,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      amenities: freezed == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyImpl implements _Property {
  const _$PropertyImpl(
      {required this.id,
      required this.titleEn,
      required this.titleBn,
      required this.descriptionEn,
      required this.descriptionBn,
      required this.price,
      required this.type,
      required this.bedrooms,
      required this.bathrooms,
      required this.areaSqft,
      required final List<String> images,
      required this.location,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      required this.owner,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.isFeatured = false,
      this.isFavorite = false,
      final Map<String, dynamic>? amenities})
      : _images = images,
        _amenities = amenities;

  factory _$PropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyImplFromJson(json);

  @override
  final String id;
  @override
  final String titleEn;
  @override
  final String titleBn;
  @override
  final String descriptionEn;
  @override
  final String descriptionBn;
  @override
  final double price;
  @override
  final PropertyType type;
  @override
  final int bedrooms;
  @override
  final int bathrooms;
  @override
  final double areaSqft;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final Location location;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  final User owner;
  @override
  final PropertyStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey()
  final bool isFeatured;
  @override
  @JsonKey()
  final bool isFavorite;
  final Map<String, dynamic>? _amenities;
  @override
  Map<String, dynamic>? get amenities {
    final value = _amenities;
    if (value == null) return null;
    if (_amenities is EqualUnmodifiableMapView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Property(id: $id, titleEn: $titleEn, titleBn: $titleBn, descriptionEn: $descriptionEn, descriptionBn: $descriptionBn, price: $price, type: $type, bedrooms: $bedrooms, bathrooms: $bathrooms, areaSqft: $areaSqft, images: $images, location: $location, owner: $owner, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, isFeatured: $isFeatured, isFavorite: $isFavorite, amenities: $amenities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.titleEn, titleEn) || other.titleEn == titleEn) &&
            (identical(other.titleBn, titleBn) || other.titleBn == titleBn) &&
            (identical(other.descriptionEn, descriptionEn) ||
                other.descriptionEn == descriptionEn) &&
            (identical(other.descriptionBn, descriptionBn) ||
                other.descriptionBn == descriptionBn) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bedrooms, bedrooms) ||
                other.bedrooms == bedrooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.areaSqft, areaSqft) ||
                other.areaSqft == areaSqft) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        titleEn,
        titleBn,
        descriptionEn,
        descriptionBn,
        price,
        type,
        bedrooms,
        bathrooms,
        areaSqft,
        const DeepCollectionEquality().hash(_images),
        location,
        owner,
        status,
        createdAt,
        updatedAt,
        isFeatured,
        isFavorite,
        const DeepCollectionEquality().hash(_amenities)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      __$$PropertyImplCopyWithImpl<_$PropertyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Property value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Property value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Property value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyImplToJson(
      this,
    );
  }
}

abstract class _Property implements Property {
  const factory _Property(
      {required final String id,
      required final String titleEn,
      required final String titleBn,
      required final String descriptionEn,
      required final String descriptionBn,
      required final double price,
      required final PropertyType type,
      required final int bedrooms,
      required final int bathrooms,
      required final double areaSqft,
      required final List<String> images,
      required final Location location,
      @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
      required final User owner,
      required final PropertyStatus status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final bool isFeatured,
      final bool isFavorite,
      final Map<String, dynamic>? amenities}) = _$PropertyImpl;

  factory _Property.fromJson(Map<String, dynamic> json) =
      _$PropertyImpl.fromJson;

  @override
  String get id;
  @override
  String get titleEn;
  @override
  String get titleBn;
  @override
  String get descriptionEn;
  @override
  String get descriptionBn;
  @override
  double get price;
  @override
  PropertyType get type;
  @override
  int get bedrooms;
  @override
  int get bathrooms;
  @override
  double get areaSqft;
  @override
  List<String> get images;
  @override
  Location get location;
  @override
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  User get owner;
  @override
  PropertyStatus get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  bool get isFeatured;
  @override
  bool get isFavorite;
  @override
  Map<String, dynamic>? get amenities;
  @override
  @JsonKey(ignore: true)
  _$$PropertyImplCopyWith<_$PropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyFilter _$PropertyFilterFromJson(Map<String, dynamic> json) {
  return _PropertyFilter.fromJson(json);
}

/// @nodoc
mixin _$PropertyFilter {
  String? get query => throw _privateConstructorUsedError;
  int? get divisionId => throw _privateConstructorUsedError;
  int? get districtId => throw _privateConstructorUsedError;
  int? get thanaId => throw _privateConstructorUsedError;
  PropertyType? get type => throw _privateConstructorUsedError;
  double? get minPrice => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;
  int? get minBedrooms => throw _privateConstructorUsedError;
  int? get maxBedrooms => throw _privateConstructorUsedError;
  int? get minBathrooms => throw _privateConstructorUsedError;
  int? get maxBathrooms => throw _privateConstructorUsedError;
  double? get minArea => throw _privateConstructorUsedError;
  double? get maxArea => throw _privateConstructorUsedError;
  List<String>? get amenities => throw _privateConstructorUsedError;
  PropertyStatus? get status => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  bool? get sortAscending => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PropertyFilter value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PropertyFilter value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PropertyFilter value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyFilterCopyWith<PropertyFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyFilterCopyWith<$Res> {
  factory $PropertyFilterCopyWith(
          PropertyFilter value, $Res Function(PropertyFilter) then) =
      _$PropertyFilterCopyWithImpl<$Res, PropertyFilter>;
  @useResult
  $Res call(
      {String? query,
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
      int page,
      int limit});
}

/// @nodoc
class _$PropertyFilterCopyWithImpl<$Res, $Val extends PropertyFilter>
    implements $PropertyFilterCopyWith<$Res> {
  _$PropertyFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? divisionId = freezed,
    Object? districtId = freezed,
    Object? thanaId = freezed,
    Object? type = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? minBedrooms = freezed,
    Object? maxBedrooms = freezed,
    Object? minBathrooms = freezed,
    Object? maxBathrooms = freezed,
    Object? minArea = freezed,
    Object? maxArea = freezed,
    Object? amenities = freezed,
    Object? status = freezed,
    Object? sortBy = freezed,
    Object? sortAscending = freezed,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      divisionId: freezed == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      thanaId: freezed == thanaId
          ? _value.thanaId
          : thanaId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PropertyType?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      minBedrooms: freezed == minBedrooms
          ? _value.minBedrooms
          : minBedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      maxBedrooms: freezed == maxBedrooms
          ? _value.maxBedrooms
          : maxBedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      minBathrooms: freezed == minBathrooms
          ? _value.minBathrooms
          : minBathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      maxBathrooms: freezed == maxBathrooms
          ? _value.maxBathrooms
          : maxBathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      minArea: freezed == minArea
          ? _value.minArea
          : minArea // ignore: cast_nullable_to_non_nullable
              as double?,
      maxArea: freezed == maxArea
          ? _value.maxArea
          : maxArea // ignore: cast_nullable_to_non_nullable
              as double?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyStatus?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortAscending: freezed == sortAscending
          ? _value.sortAscending
          : sortAscending // ignore: cast_nullable_to_non_nullable
              as bool?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyFilterImplCopyWith<$Res>
    implements $PropertyFilterCopyWith<$Res> {
  factory _$$PropertyFilterImplCopyWith(_$PropertyFilterImpl value,
          $Res Function(_$PropertyFilterImpl) then) =
      __$$PropertyFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? query,
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
      int page,
      int limit});
}

/// @nodoc
class __$$PropertyFilterImplCopyWithImpl<$Res>
    extends _$PropertyFilterCopyWithImpl<$Res, _$PropertyFilterImpl>
    implements _$$PropertyFilterImplCopyWith<$Res> {
  __$$PropertyFilterImplCopyWithImpl(
      _$PropertyFilterImpl _value, $Res Function(_$PropertyFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? divisionId = freezed,
    Object? districtId = freezed,
    Object? thanaId = freezed,
    Object? type = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? minBedrooms = freezed,
    Object? maxBedrooms = freezed,
    Object? minBathrooms = freezed,
    Object? maxBathrooms = freezed,
    Object? minArea = freezed,
    Object? maxArea = freezed,
    Object? amenities = freezed,
    Object? status = freezed,
    Object? sortBy = freezed,
    Object? sortAscending = freezed,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$PropertyFilterImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      divisionId: freezed == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      thanaId: freezed == thanaId
          ? _value.thanaId
          : thanaId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PropertyType?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      minBedrooms: freezed == minBedrooms
          ? _value.minBedrooms
          : minBedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      maxBedrooms: freezed == maxBedrooms
          ? _value.maxBedrooms
          : maxBedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      minBathrooms: freezed == minBathrooms
          ? _value.minBathrooms
          : minBathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      maxBathrooms: freezed == maxBathrooms
          ? _value.maxBathrooms
          : maxBathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      minArea: freezed == minArea
          ? _value.minArea
          : minArea // ignore: cast_nullable_to_non_nullable
              as double?,
      maxArea: freezed == maxArea
          ? _value.maxArea
          : maxArea // ignore: cast_nullable_to_non_nullable
              as double?,
      amenities: freezed == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyStatus?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortAscending: freezed == sortAscending
          ? _value.sortAscending
          : sortAscending // ignore: cast_nullable_to_non_nullable
              as bool?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyFilterImpl implements _PropertyFilter {
  const _$PropertyFilterImpl(
      {this.query,
      this.divisionId,
      this.districtId,
      this.thanaId,
      this.type,
      this.minPrice,
      this.maxPrice,
      this.minBedrooms,
      this.maxBedrooms,
      this.minBathrooms,
      this.maxBathrooms,
      this.minArea,
      this.maxArea,
      final List<String>? amenities,
      this.status,
      this.sortBy,
      this.sortAscending,
      this.page = 1,
      this.limit = 20})
      : _amenities = amenities;

  factory _$PropertyFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyFilterImplFromJson(json);

  @override
  final String? query;
  @override
  final int? divisionId;
  @override
  final int? districtId;
  @override
  final int? thanaId;
  @override
  final PropertyType? type;
  @override
  final double? minPrice;
  @override
  final double? maxPrice;
  @override
  final int? minBedrooms;
  @override
  final int? maxBedrooms;
  @override
  final int? minBathrooms;
  @override
  final int? maxBathrooms;
  @override
  final double? minArea;
  @override
  final double? maxArea;
  final List<String>? _amenities;
  @override
  List<String>? get amenities {
    final value = _amenities;
    if (value == null) return null;
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PropertyStatus? status;
  @override
  final String? sortBy;
  @override
  final bool? sortAscending;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'PropertyFilter(query: $query, divisionId: $divisionId, districtId: $districtId, thanaId: $thanaId, type: $type, minPrice: $minPrice, maxPrice: $maxPrice, minBedrooms: $minBedrooms, maxBedrooms: $maxBedrooms, minBathrooms: $minBathrooms, maxBathrooms: $maxBathrooms, minArea: $minArea, maxArea: $maxArea, amenities: $amenities, status: $status, sortBy: $sortBy, sortAscending: $sortAscending, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyFilterImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.divisionId, divisionId) ||
                other.divisionId == divisionId) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.thanaId, thanaId) || other.thanaId == thanaId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.minBedrooms, minBedrooms) ||
                other.minBedrooms == minBedrooms) &&
            (identical(other.maxBedrooms, maxBedrooms) ||
                other.maxBedrooms == maxBedrooms) &&
            (identical(other.minBathrooms, minBathrooms) ||
                other.minBathrooms == minBathrooms) &&
            (identical(other.maxBathrooms, maxBathrooms) ||
                other.maxBathrooms == maxBathrooms) &&
            (identical(other.minArea, minArea) || other.minArea == minArea) &&
            (identical(other.maxArea, maxArea) || other.maxArea == maxArea) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortAscending, sortAscending) ||
                other.sortAscending == sortAscending) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        query,
        divisionId,
        districtId,
        thanaId,
        type,
        minPrice,
        maxPrice,
        minBedrooms,
        maxBedrooms,
        minBathrooms,
        maxBathrooms,
        minArea,
        maxArea,
        const DeepCollectionEquality().hash(_amenities),
        status,
        sortBy,
        sortAscending,
        page,
        limit
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyFilterImplCopyWith<_$PropertyFilterImpl> get copyWith =>
      __$$PropertyFilterImplCopyWithImpl<_$PropertyFilterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PropertyFilter value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PropertyFilter value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PropertyFilter value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyFilterImplToJson(
      this,
    );
  }
}

abstract class _PropertyFilter implements PropertyFilter {
  const factory _PropertyFilter(
      {final String? query,
      final int? divisionId,
      final int? districtId,
      final int? thanaId,
      final PropertyType? type,
      final double? minPrice,
      final double? maxPrice,
      final int? minBedrooms,
      final int? maxBedrooms,
      final int? minBathrooms,
      final int? maxBathrooms,
      final double? minArea,
      final double? maxArea,
      final List<String>? amenities,
      final PropertyStatus? status,
      final String? sortBy,
      final bool? sortAscending,
      final int page,
      final int limit}) = _$PropertyFilterImpl;

  factory _PropertyFilter.fromJson(Map<String, dynamic> json) =
      _$PropertyFilterImpl.fromJson;

  @override
  String? get query;
  @override
  int? get divisionId;
  @override
  int? get districtId;
  @override
  int? get thanaId;
  @override
  PropertyType? get type;
  @override
  double? get minPrice;
  @override
  double? get maxPrice;
  @override
  int? get minBedrooms;
  @override
  int? get maxBedrooms;
  @override
  int? get minBathrooms;
  @override
  int? get maxBathrooms;
  @override
  double? get minArea;
  @override
  double? get maxArea;
  @override
  List<String>? get amenities;
  @override
  PropertyStatus? get status;
  @override
  String? get sortBy;
  @override
  bool? get sortAscending;
  @override
  int get page;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$PropertyFilterImplCopyWith<_$PropertyFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaginatedResponse<T> {
  List<T> get data => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  bool get hasPreviousPage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PaginatedResponse<T> value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PaginatedResponse<T> value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PaginatedResponse<T> value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedResponseCopyWith<T, PaginatedResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResponseCopyWith<T, $Res> {
  factory $PaginatedResponseCopyWith(PaginatedResponse<T> value,
          $Res Function(PaginatedResponse<T>) then) =
      _$PaginatedResponseCopyWithImpl<T, $Res, PaginatedResponse<T>>;
  @useResult
  $Res call(
      {List<T> data,
      int currentPage,
      int totalPages,
      int totalItems,
      int itemsPerPage,
      bool hasNextPage,
      bool hasPreviousPage});
}

/// @nodoc
class _$PaginatedResponseCopyWithImpl<T, $Res,
        $Val extends PaginatedResponse<T>>
    implements $PaginatedResponseCopyWith<T, $Res> {
  _$PaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? totalItems = null,
    Object? itemsPerPage = null,
    Object? hasNextPage = null,
    Object? hasPreviousPage = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPreviousPage: null == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedResponseImplCopyWith<T, $Res>
    implements $PaginatedResponseCopyWith<T, $Res> {
  factory _$$PaginatedResponseImplCopyWith(_$PaginatedResponseImpl<T> value,
          $Res Function(_$PaginatedResponseImpl<T>) then) =
      __$$PaginatedResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> data,
      int currentPage,
      int totalPages,
      int totalItems,
      int itemsPerPage,
      bool hasNextPage,
      bool hasPreviousPage});
}

/// @nodoc
class __$$PaginatedResponseImplCopyWithImpl<T, $Res>
    extends _$PaginatedResponseCopyWithImpl<T, $Res, _$PaginatedResponseImpl<T>>
    implements _$$PaginatedResponseImplCopyWith<T, $Res> {
  __$$PaginatedResponseImplCopyWithImpl(_$PaginatedResponseImpl<T> _value,
      $Res Function(_$PaginatedResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? totalItems = null,
    Object? itemsPerPage = null,
    Object? hasNextPage = null,
    Object? hasPreviousPage = null,
  }) {
    return _then(_$PaginatedResponseImpl<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPreviousPage: null == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaginatedResponseImpl<T> implements _PaginatedResponse<T> {
  const _$PaginatedResponseImpl(
      {required final List<T> data,
      required this.currentPage,
      required this.totalPages,
      required this.totalItems,
      required this.itemsPerPage,
      this.hasNextPage = false,
      this.hasPreviousPage = false})
      : _data = data;

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int currentPage;
  @override
  final int totalPages;
  @override
  final int totalItems;
  @override
  final int itemsPerPage;
  @override
  @JsonKey()
  final bool hasNextPage;
  @override
  @JsonKey()
  final bool hasPreviousPage;

  @override
  String toString() {
    return 'PaginatedResponse<$T>(data: $data, currentPage: $currentPage, totalPages: $totalPages, totalItems: $totalItems, itemsPerPage: $itemsPerPage, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedResponseImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      totalPages,
      totalItems,
      itemsPerPage,
      hasNextPage,
      hasPreviousPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedResponseImplCopyWith<T, _$PaginatedResponseImpl<T>>
      get copyWith =>
          __$$PaginatedResponseImplCopyWithImpl<T, _$PaginatedResponseImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PaginatedResponse<T> value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PaginatedResponse<T> value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PaginatedResponse<T> value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _PaginatedResponse<T> implements PaginatedResponse<T> {
  const factory _PaginatedResponse(
      {required final List<T> data,
      required final int currentPage,
      required final int totalPages,
      required final int totalItems,
      required final int itemsPerPage,
      final bool hasNextPage,
      final bool hasPreviousPage}) = _$PaginatedResponseImpl<T>;

  @override
  List<T> get data;
  @override
  int get currentPage;
  @override
  int get totalPages;
  @override
  int get totalItems;
  @override
  int get itemsPerPage;
  @override
  bool get hasNextPage;
  @override
  bool get hasPreviousPage;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedResponseImplCopyWith<T, _$PaginatedResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
