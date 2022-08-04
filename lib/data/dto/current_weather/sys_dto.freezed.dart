// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sys_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SysDTO _$SysDTOFromJson(Map<String, dynamic> json) {
  return _SysDTO.fromJson(json);
}

/// @nodoc
mixin _$SysDTO {
  num? get type => throw _privateConstructorUsedError;
  num? get id => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  num? get sunrise => throw _privateConstructorUsedError;
  num? get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SysDTOCopyWith<SysDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysDTOCopyWith<$Res> {
  factory $SysDTOCopyWith(SysDTO value, $Res Function(SysDTO) then) =
      _$SysDTOCopyWithImpl<$Res>;
  $Res call({num? type, num? id, String? country, num? sunrise, num? sunset});
}

/// @nodoc
class _$SysDTOCopyWithImpl<$Res> implements $SysDTOCopyWith<$Res> {
  _$SysDTOCopyWithImpl(this._value, this._then);

  final SysDTO _value;
  // ignore: unused_field
  final $Res Function(SysDTO) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? country = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as num?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as num?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$$_SysDTOCopyWith<$Res> implements $SysDTOCopyWith<$Res> {
  factory _$$_SysDTOCopyWith(_$_SysDTO value, $Res Function(_$_SysDTO) then) =
      __$$_SysDTOCopyWithImpl<$Res>;
  @override
  $Res call({num? type, num? id, String? country, num? sunrise, num? sunset});
}

/// @nodoc
class __$$_SysDTOCopyWithImpl<$Res> extends _$SysDTOCopyWithImpl<$Res>
    implements _$$_SysDTOCopyWith<$Res> {
  __$$_SysDTOCopyWithImpl(_$_SysDTO _value, $Res Function(_$_SysDTO) _then)
      : super(_value, (v) => _then(v as _$_SysDTO));

  @override
  _$_SysDTO get _value => super._value as _$_SysDTO;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? country = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_$_SysDTO(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as num?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as num?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SysDTO implements _SysDTO {
  const _$_SysDTO(
      {this.type, this.id, this.country, this.sunrise, this.sunset});

  factory _$_SysDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SysDTOFromJson(json);

  @override
  final num? type;
  @override
  final num? id;
  @override
  final String? country;
  @override
  final num? sunrise;
  @override
  final num? sunset;

  @override
  String toString() {
    return 'SysDTO(type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SysDTO &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.sunrise, sunrise) &&
            const DeepCollectionEquality().equals(other.sunset, sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(sunrise),
      const DeepCollectionEquality().hash(sunset));

  @JsonKey(ignore: true)
  @override
  _$$_SysDTOCopyWith<_$_SysDTO> get copyWith =>
      __$$_SysDTOCopyWithImpl<_$_SysDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SysDTOToJson(
      this,
    );
  }
}

abstract class _SysDTO implements SysDTO {
  const factory _SysDTO(
      {final num? type,
      final num? id,
      final String? country,
      final num? sunrise,
      final num? sunset}) = _$_SysDTO;

  factory _SysDTO.fromJson(Map<String, dynamic> json) = _$_SysDTO.fromJson;

  @override
  num? get type;
  @override
  num? get id;
  @override
  String? get country;
  @override
  num? get sunrise;
  @override
  num? get sunset;
  @override
  @JsonKey(ignore: true)
  _$$_SysDTOCopyWith<_$_SysDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
