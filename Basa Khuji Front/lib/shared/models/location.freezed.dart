// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Division _$DivisionFromJson(Map<String, dynamic> json) {
  return _Division.fromJson(json);
}

/// @nodoc
mixin _$Division {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'bivNam')
  String get nameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'bivBnNam')
  String get nameBn => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Division value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Division value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Division value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionCopyWith<Division> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionCopyWith<$Res> {
  factory $DivisionCopyWith(Division value, $Res Function(Division) then) =
      _$DivisionCopyWithImpl<$Res, Division>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'bivNam') String nameEn,
      @JsonKey(name: 'bivBnNam') String nameBn});
}

/// @nodoc
class _$DivisionCopyWithImpl<$Res, $Val extends Division>
    implements $DivisionCopyWith<$Res> {
  _$DivisionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameEn = null,
    Object? nameBn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameBn: null == nameBn
          ? _value.nameBn
          : nameBn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DivisionImplCopyWith<$Res>
    implements $DivisionCopyWith<$Res> {
  factory _$$DivisionImplCopyWith(
          _$DivisionImpl value, $Res Function(_$DivisionImpl) then) =
      __$$DivisionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'bivNam') String nameEn,
      @JsonKey(name: 'bivBnNam') String nameBn});
}

/// @nodoc
class __$$DivisionImplCopyWithImpl<$Res>
    extends _$DivisionCopyWithImpl<$Res, _$DivisionImpl>
    implements _$$DivisionImplCopyWith<$Res> {
  __$$DivisionImplCopyWithImpl(
      _$DivisionImpl _value, $Res Function(_$DivisionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameEn = null,
    Object? nameBn = null,
  }) {
    return _then(_$DivisionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameBn: null == nameBn
          ? _value.nameBn
          : nameBn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionImpl implements _Division {
  const _$DivisionImpl(
      {required this.id,
      @JsonKey(name: 'bivNam') required this.nameEn,
      @JsonKey(name: 'bivBnNam') required this.nameBn});

  factory _$DivisionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'bivNam')
  final String nameEn;
  @override
  @JsonKey(name: 'bivBnNam')
  final String nameBn;

  @override
  String toString() {
    return 'Division(id: $id, nameEn: $nameEn, nameBn: $nameBn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameBn, nameBn) || other.nameBn == nameBn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nameEn, nameBn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionImplCopyWith<_$DivisionImpl> get copyWith =>
      __$$DivisionImplCopyWithImpl<_$DivisionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Division value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Division value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Division value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionImplToJson(
      this,
    );
  }
}

abstract class _Division implements Division {
  const factory _Division(
          {required final int id,
          @JsonKey(name: 'bivNam') required final String nameEn,
          @JsonKey(name: 'bivBnNam') required final String nameBn}) =
      _$DivisionImpl;

  factory _Division.fromJson(Map<String, dynamic> json) =
      _$DivisionImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'bivNam')
  String get nameEn;
  @override
  @JsonKey(name: 'bivBnNam')
  String get nameBn;
  @override
  @JsonKey(ignore: true)
  _$$DivisionImplCopyWith<_$DivisionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

District _$DistrictFromJson(Map<String, dynamic> json) {
  return _District.fromJson(json);
}

/// @nodoc
mixin _$District {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'div_id')
  int get divisionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'jelaNam')
  String get nameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'jelaBnNam')
  String get nameBn => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_District value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_District value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_District value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictCopyWith<District> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictCopyWith<$Res> {
  factory $DistrictCopyWith(District value, $Res Function(District) then) =
      _$DistrictCopyWithImpl<$Res, District>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'div_id') int divisionId,
      @JsonKey(name: 'jelaNam') String nameEn,
      @JsonKey(name: 'jelaBnNam') String nameBn});
}

/// @nodoc
class _$DistrictCopyWithImpl<$Res, $Val extends District>
    implements $DistrictCopyWith<$Res> {
  _$DistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? divisionId = null,
    Object? nameEn = null,
    Object? nameBn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      divisionId: null == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameBn: null == nameBn
          ? _value.nameBn
          : nameBn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistrictImplCopyWith<$Res>
    implements $DistrictCopyWith<$Res> {
  factory _$$DistrictImplCopyWith(
          _$DistrictImpl value, $Res Function(_$DistrictImpl) then) =
      __$$DistrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'div_id') int divisionId,
      @JsonKey(name: 'jelaNam') String nameEn,
      @JsonKey(name: 'jelaBnNam') String nameBn});
}

/// @nodoc
class __$$DistrictImplCopyWithImpl<$Res>
    extends _$DistrictCopyWithImpl<$Res, _$DistrictImpl>
    implements _$$DistrictImplCopyWith<$Res> {
  __$$DistrictImplCopyWithImpl(
      _$DistrictImpl _value, $Res Function(_$DistrictImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? divisionId = null,
    Object? nameEn = null,
    Object? nameBn = null,
  }) {
    return _then(_$DistrictImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      divisionId: null == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameBn: null == nameBn
          ? _value.nameBn
          : nameBn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictImpl implements _District {
  const _$DistrictImpl(
      {required this.id,
      @JsonKey(name: 'div_id') required this.divisionId,
      @JsonKey(name: 'jelaNam') required this.nameEn,
      @JsonKey(name: 'jelaBnNam') required this.nameBn});

  factory _$DistrictImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'div_id')
  final int divisionId;
  @override
  @JsonKey(name: 'jelaNam')
  final String nameEn;
  @override
  @JsonKey(name: 'jelaBnNam')
  final String nameBn;

  @override
  String toString() {
    return 'District(id: $id, divisionId: $divisionId, nameEn: $nameEn, nameBn: $nameBn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.divisionId, divisionId) ||
                other.divisionId == divisionId) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameBn, nameBn) || other.nameBn == nameBn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, divisionId, nameEn, nameBn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictImplCopyWith<_$DistrictImpl> get copyWith =>
      __$$DistrictImplCopyWithImpl<_$DistrictImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_District value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_District value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_District value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictImplToJson(
      this,
    );
  }
}

abstract class _District implements District {
  const factory _District(
          {required final int id,
          @JsonKey(name: 'div_id') required final int divisionId,
          @JsonKey(name: 'jelaNam') required final String nameEn,
          @JsonKey(name: 'jelaBnNam') required final String nameBn}) =
      _$DistrictImpl;

  factory _District.fromJson(Map<String, dynamic> json) =
      _$DistrictImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'div_id')
  int get divisionId;
  @override
  @JsonKey(name: 'jelaNam')
  String get nameEn;
  @override
  @JsonKey(name: 'jelaBnNam')
  String get nameBn;
  @override
  @JsonKey(ignore: true)
  _$$DistrictImplCopyWith<_$DistrictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Thana _$ThanaFromJson(Map<String, dynamic> json) {
  return _Thana.fromJson(json);
}

/// @nodoc
mixin _$Thana {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'dist_id')
  int get districtId => throw _privateConstructorUsedError;
  @JsonKey(name: 'thanaNam')
  String get nameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'thanaBnNam')
  String get nameBn => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Thana value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Thana value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Thana value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThanaCopyWith<Thana> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThanaCopyWith<$Res> {
  factory $ThanaCopyWith(Thana value, $Res Function(Thana) then) =
      _$ThanaCopyWithImpl<$Res, Thana>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'dist_id') int districtId,
      @JsonKey(name: 'thanaNam') String nameEn,
      @JsonKey(name: 'thanaBnNam') String nameBn});
}

/// @nodoc
class _$ThanaCopyWithImpl<$Res, $Val extends Thana>
    implements $ThanaCopyWith<$Res> {
  _$ThanaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? districtId = null,
    Object? nameEn = null,
    Object? nameBn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      districtId: null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameBn: null == nameBn
          ? _value.nameBn
          : nameBn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThanaImplCopyWith<$Res> implements $ThanaCopyWith<$Res> {
  factory _$$ThanaImplCopyWith(
          _$ThanaImpl value, $Res Function(_$ThanaImpl) then) =
      __$$ThanaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'dist_id') int districtId,
      @JsonKey(name: 'thanaNam') String nameEn,
      @JsonKey(name: 'thanaBnNam') String nameBn});
}

/// @nodoc
class __$$ThanaImplCopyWithImpl<$Res>
    extends _$ThanaCopyWithImpl<$Res, _$ThanaImpl>
    implements _$$ThanaImplCopyWith<$Res> {
  __$$ThanaImplCopyWithImpl(
      _$ThanaImpl _value, $Res Function(_$ThanaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? districtId = null,
    Object? nameEn = null,
    Object? nameBn = null,
  }) {
    return _then(_$ThanaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      districtId: null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameBn: null == nameBn
          ? _value.nameBn
          : nameBn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThanaImpl implements _Thana {
  const _$ThanaImpl(
      {required this.id,
      @JsonKey(name: 'dist_id') required this.districtId,
      @JsonKey(name: 'thanaNam') required this.nameEn,
      @JsonKey(name: 'thanaBnNam') required this.nameBn});

  factory _$ThanaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThanaImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'dist_id')
  final int districtId;
  @override
  @JsonKey(name: 'thanaNam')
  final String nameEn;
  @override
  @JsonKey(name: 'thanaBnNam')
  final String nameBn;

  @override
  String toString() {
    return 'Thana(id: $id, districtId: $districtId, nameEn: $nameEn, nameBn: $nameBn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThanaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameBn, nameBn) || other.nameBn == nameBn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, districtId, nameEn, nameBn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThanaImplCopyWith<_$ThanaImpl> get copyWith =>
      __$$ThanaImplCopyWithImpl<_$ThanaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Thana value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Thana value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Thana value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ThanaImplToJson(
      this,
    );
  }
}

abstract class _Thana implements Thana {
  const factory _Thana(
      {required final int id,
      @JsonKey(name: 'dist_id') required final int districtId,
      @JsonKey(name: 'thanaNam') required final String nameEn,
      @JsonKey(name: 'thanaBnNam') required final String nameBn}) = _$ThanaImpl;

  factory _Thana.fromJson(Map<String, dynamic> json) = _$ThanaImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'dist_id')
  int get districtId;
  @override
  @JsonKey(name: 'thanaNam')
  String get nameEn;
  @override
  @JsonKey(name: 'thanaBnNam')
  String get nameBn;
  @override
  @JsonKey(ignore: true)
  _$$ThanaImplCopyWith<_$ThanaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  int get id => throw _privateConstructorUsedError;
  int get thanaId => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  String get nameBn => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Area value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Area value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Area value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res, Area>;
  @useResult
  $Res call({int id, int thanaId, String nameEn, String nameBn});
}

/// @nodoc
class _$AreaCopyWithImpl<$Res, $Val extends Area>
    implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? thanaId = null,
    Object? nameEn = null,
    Object? nameBn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thanaId: null == thanaId
          ? _value.thanaId
          : thanaId // ignore: cast_nullable_to_non_nullable
              as int,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameBn: null == nameBn
          ? _value.nameBn
          : nameBn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaImplCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$AreaImplCopyWith(
          _$AreaImpl value, $Res Function(_$AreaImpl) then) =
      __$$AreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int thanaId, String nameEn, String nameBn});
}

/// @nodoc
class __$$AreaImplCopyWithImpl<$Res>
    extends _$AreaCopyWithImpl<$Res, _$AreaImpl>
    implements _$$AreaImplCopyWith<$Res> {
  __$$AreaImplCopyWithImpl(_$AreaImpl _value, $Res Function(_$AreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? thanaId = null,
    Object? nameEn = null,
    Object? nameBn = null,
  }) {
    return _then(_$AreaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thanaId: null == thanaId
          ? _value.thanaId
          : thanaId // ignore: cast_nullable_to_non_nullable
              as int,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameBn: null == nameBn
          ? _value.nameBn
          : nameBn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaImpl implements _Area {
  const _$AreaImpl(
      {required this.id,
      required this.thanaId,
      required this.nameEn,
      required this.nameBn});

  factory _$AreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaImplFromJson(json);

  @override
  final int id;
  @override
  final int thanaId;
  @override
  final String nameEn;
  @override
  final String nameBn;

  @override
  String toString() {
    return 'Area(id: $id, thanaId: $thanaId, nameEn: $nameEn, nameBn: $nameBn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.thanaId, thanaId) || other.thanaId == thanaId) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameBn, nameBn) || other.nameBn == nameBn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, thanaId, nameEn, nameBn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      __$$AreaImplCopyWithImpl<_$AreaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Area value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Area value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Area value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaImplToJson(
      this,
    );
  }
}

abstract class _Area implements Area {
  const factory _Area(
      {required final int id,
      required final int thanaId,
      required final String nameEn,
      required final String nameBn}) = _$AreaImpl;

  factory _Area.fromJson(Map<String, dynamic> json) = _$AreaImpl.fromJson;

  @override
  int get id;
  @override
  int get thanaId;
  @override
  String get nameEn;
  @override
  String get nameBn;
  @override
  @JsonKey(ignore: true)
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  Division get division => throw _privateConstructorUsedError;
  District get district => throw _privateConstructorUsedError;
  Thana get thana => throw _privateConstructorUsedError;
  Area? get area => throw _privateConstructorUsedError;
  String? get areaNameEn => throw _privateConstructorUsedError;
  String? get areaNameBn => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Location value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Location value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Location value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {Division division,
      District district,
      Thana thana,
      Area? area,
      String? areaNameEn,
      String? areaNameBn,
      double? latitude,
      double? longitude});

  $DivisionCopyWith<$Res> get division;
  $DistrictCopyWith<$Res> get district;
  $ThanaCopyWith<$Res> get thana;
  $AreaCopyWith<$Res>? get area;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? division = null,
    Object? district = null,
    Object? thana = null,
    Object? area = freezed,
    Object? areaNameEn = freezed,
    Object? areaNameBn = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as Division,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as District,
      thana: null == thana
          ? _value.thana
          : thana // ignore: cast_nullable_to_non_nullable
              as Thana,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
      areaNameEn: freezed == areaNameEn
          ? _value.areaNameEn
          : areaNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      areaNameBn: freezed == areaNameBn
          ? _value.areaNameBn
          : areaNameBn // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DivisionCopyWith<$Res> get division {
    return $DivisionCopyWith<$Res>(_value.division, (value) {
      return _then(_value.copyWith(division: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DistrictCopyWith<$Res> get district {
    return $DistrictCopyWith<$Res>(_value.district, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThanaCopyWith<$Res> get thana {
    return $ThanaCopyWith<$Res>(_value.thana, (value) {
      return _then(_value.copyWith(thana: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res>? get area {
    if (_value.area == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_value.area!, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Division division,
      District district,
      Thana thana,
      Area? area,
      String? areaNameEn,
      String? areaNameBn,
      double? latitude,
      double? longitude});

  @override
  $DivisionCopyWith<$Res> get division;
  @override
  $DistrictCopyWith<$Res> get district;
  @override
  $ThanaCopyWith<$Res> get thana;
  @override
  $AreaCopyWith<$Res>? get area;
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? division = null,
    Object? district = null,
    Object? thana = null,
    Object? area = freezed,
    Object? areaNameEn = freezed,
    Object? areaNameBn = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$LocationImpl(
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as Division,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as District,
      thana: null == thana
          ? _value.thana
          : thana // ignore: cast_nullable_to_non_nullable
              as Thana,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
      areaNameEn: freezed == areaNameEn
          ? _value.areaNameEn
          : areaNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      areaNameBn: freezed == areaNameBn
          ? _value.areaNameBn
          : areaNameBn // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {required this.division,
      required this.district,
      required this.thana,
      this.area,
      this.areaNameEn,
      this.areaNameBn,
      this.latitude,
      this.longitude});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final Division division;
  @override
  final District district;
  @override
  final Thana thana;
  @override
  final Area? area;
  @override
  final String? areaNameEn;
  @override
  final String? areaNameBn;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'Location(division: $division, district: $district, thana: $thana, area: $area, areaNameEn: $areaNameEn, areaNameBn: $areaNameBn, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.thana, thana) || other.thana == thana) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.areaNameEn, areaNameEn) ||
                other.areaNameEn == areaNameEn) &&
            (identical(other.areaNameBn, areaNameBn) ||
                other.areaNameBn == areaNameBn) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, division, district, thana, area,
      areaNameEn, areaNameBn, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Location value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Location value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Location value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final Division division,
      required final District district,
      required final Thana thana,
      final Area? area,
      final String? areaNameEn,
      final String? areaNameBn,
      final double? latitude,
      final double? longitude}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  Division get division;
  @override
  District get district;
  @override
  Thana get thana;
  @override
  Area? get area;
  @override
  String? get areaNameEn;
  @override
  String? get areaNameBn;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
