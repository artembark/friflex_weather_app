// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityDTO _$CityDTOFromJson(Map<String, dynamic> json) {
  return _CityDTO.fromJson(json);
}

/// @nodoc
mixin _$CityDTO {
  CoordDTO? get coord => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get population => throw _privateConstructorUsedError;
  int? get sunrise => throw _privateConstructorUsedError;
  int? get sunset => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityDTOCopyWith<CityDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDTOCopyWith<$Res> {
  factory $CityDTOCopyWith(CityDTO value, $Res Function(CityDTO) then) =
      _$CityDTOCopyWithImpl<$Res>;
  $Res call(
      {CoordDTO? coord,
      String? country,
      int? id,
      String? name,
      int? population,
      int? sunrise,
      int? sunset,
      int? timezone});

  $CoordDTOCopyWith<$Res>? get coord;
}

/// @nodoc
class _$CityDTOCopyWithImpl<$Res> implements $CityDTOCopyWith<$Res> {
  _$CityDTOCopyWithImpl(this._value, this._then);

  final CityDTO _value;
  // ignore: unused_field
  final $Res Function(CityDTO) _then;

  @override
  $Res call({
    Object? coord = freezed,
    Object? country = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? population = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordDTO?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      population: population == freezed
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $CoordDTOCopyWith<$Res>? get coord {
    if (_value.coord == null) {
      return null;
    }

    return $CoordDTOCopyWith<$Res>(_value.coord!, (value) {
      return _then(_value.copyWith(coord: value));
    });
  }
}

/// @nodoc
abstract class _$$_CityDTOCopyWith<$Res> implements $CityDTOCopyWith<$Res> {
  factory _$$_CityDTOCopyWith(
          _$_CityDTO value, $Res Function(_$_CityDTO) then) =
      __$$_CityDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {CoordDTO? coord,
      String? country,
      int? id,
      String? name,
      int? population,
      int? sunrise,
      int? sunset,
      int? timezone});

  @override
  $CoordDTOCopyWith<$Res>? get coord;
}

/// @nodoc
class __$$_CityDTOCopyWithImpl<$Res> extends _$CityDTOCopyWithImpl<$Res>
    implements _$$_CityDTOCopyWith<$Res> {
  __$$_CityDTOCopyWithImpl(_$_CityDTO _value, $Res Function(_$_CityDTO) _then)
      : super(_value, (v) => _then(v as _$_CityDTO));

  @override
  _$_CityDTO get _value => super._value as _$_CityDTO;

  @override
  $Res call({
    Object? coord = freezed,
    Object? country = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? population = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_$_CityDTO(
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordDTO?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      population: population == freezed
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityDTO implements _CityDTO {
  const _$_CityDTO(
      {this.coord,
      this.country,
      this.id,
      this.name,
      this.population,
      this.sunrise,
      this.sunset,
      this.timezone});

  factory _$_CityDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CityDTOFromJson(json);

  @override
  final CoordDTO? coord;
  @override
  final String? country;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? population;
  @override
  final int? sunrise;
  @override
  final int? sunset;
  @override
  final int? timezone;

  @override
  String toString() {
    return 'CityDTO(coord: $coord, country: $country, id: $id, name: $name, population: $population, sunrise: $sunrise, sunset: $sunset, timezone: $timezone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityDTO &&
            const DeepCollectionEquality().equals(other.coord, coord) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.population, population) &&
            const DeepCollectionEquality().equals(other.sunrise, sunrise) &&
            const DeepCollectionEquality().equals(other.sunset, sunset) &&
            const DeepCollectionEquality().equals(other.timezone, timezone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coord),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(population),
      const DeepCollectionEquality().hash(sunrise),
      const DeepCollectionEquality().hash(sunset),
      const DeepCollectionEquality().hash(timezone));

  @JsonKey(ignore: true)
  @override
  _$$_CityDTOCopyWith<_$_CityDTO> get copyWith =>
      __$$_CityDTOCopyWithImpl<_$_CityDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityDTOToJson(
      this,
    );
  }
}

abstract class _CityDTO implements CityDTO {
  const factory _CityDTO(
      {final CoordDTO? coord,
      final String? country,
      final int? id,
      final String? name,
      final int? population,
      final int? sunrise,
      final int? sunset,
      final int? timezone}) = _$_CityDTO;

  factory _CityDTO.fromJson(Map<String, dynamic> json) = _$_CityDTO.fromJson;

  @override
  CoordDTO? get coord;
  @override
  String? get country;
  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get population;
  @override
  int? get sunrise;
  @override
  int? get sunset;
  @override
  int? get timezone;
  @override
  @JsonKey(ignore: true)
  _$$_CityDTOCopyWith<_$_CityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
