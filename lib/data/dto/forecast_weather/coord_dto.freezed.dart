// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coord_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoordDTO _$CoordDTOFromJson(Map<String, dynamic> json) {
  return _CoordDto.fromJson(json);
}

/// @nodoc
mixin _$CoordDTO {
  num? get lon => throw _privateConstructorUsedError;
  num? get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordDTOCopyWith<CoordDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordDTOCopyWith<$Res> {
  factory $CoordDTOCopyWith(CoordDTO value, $Res Function(CoordDTO) then) =
      _$CoordDTOCopyWithImpl<$Res>;
  $Res call({num? lon, num? lat});
}

/// @nodoc
class _$CoordDTOCopyWithImpl<$Res> implements $CoordDTOCopyWith<$Res> {
  _$CoordDTOCopyWithImpl(this._value, this._then);

  final CoordDTO _value;
  // ignore: unused_field
  final $Res Function(CoordDTO) _then;

  @override
  $Res call({
    Object? lon = freezed,
    Object? lat = freezed,
  }) {
    return _then(_value.copyWith(
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$$_CoordDtoCopyWith<$Res> implements $CoordDTOCopyWith<$Res> {
  factory _$$_CoordDtoCopyWith(
          _$_CoordDto value, $Res Function(_$_CoordDto) then) =
      __$$_CoordDtoCopyWithImpl<$Res>;
  @override
  $Res call({num? lon, num? lat});
}

/// @nodoc
class __$$_CoordDtoCopyWithImpl<$Res> extends _$CoordDTOCopyWithImpl<$Res>
    implements _$$_CoordDtoCopyWith<$Res> {
  __$$_CoordDtoCopyWithImpl(
      _$_CoordDto _value, $Res Function(_$_CoordDto) _then)
      : super(_value, (v) => _then(v as _$_CoordDto));

  @override
  _$_CoordDto get _value => super._value as _$_CoordDto;

  @override
  $Res call({
    Object? lon = freezed,
    Object? lat = freezed,
  }) {
    return _then(_$_CoordDto(
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoordDto implements _CoordDto {
  const _$_CoordDto({this.lon, this.lat});

  factory _$_CoordDto.fromJson(Map<String, dynamic> json) =>
      _$$_CoordDtoFromJson(json);

  @override
  final num? lon;
  @override
  final num? lat;

  @override
  String toString() {
    return 'CoordDTO(lon: $lon, lat: $lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoordDto &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.lat, lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(lat));

  @JsonKey(ignore: true)
  @override
  _$$_CoordDtoCopyWith<_$_CoordDto> get copyWith =>
      __$$_CoordDtoCopyWithImpl<_$_CoordDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordDtoToJson(
      this,
    );
  }
}

abstract class _CoordDto implements CoordDTO {
  const factory _CoordDto({final num? lon, final num? lat}) = _$_CoordDto;

  factory _CoordDto.fromJson(Map<String, dynamic> json) = _$_CoordDto.fromJson;

  @override
  num? get lon;
  @override
  num? get lat;
  @override
  @JsonKey(ignore: true)
  _$$_CoordDtoCopyWith<_$_CoordDto> get copyWith =>
      throw _privateConstructorUsedError;
}
