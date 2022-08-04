// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeatherDTO _$CurrentWeatherDTOFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherDTO {
  CoordDTO? get coord => throw _privateConstructorUsedError;
  List<WeatherDTO>? get weather => throw _privateConstructorUsedError;
  String? get base => throw _privateConstructorUsedError;
  MainDTO? get main => throw _privateConstructorUsedError;
  num? get visibility => throw _privateConstructorUsedError;
  WindDTO? get wind => throw _privateConstructorUsedError;
  CloudsDTO? get clouds => throw _privateConstructorUsedError;
  num? get dt => throw _privateConstructorUsedError;
  SysDTO? get sys => throw _privateConstructorUsedError;
  num? get timezone => throw _privateConstructorUsedError;
  num? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  num? get cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherDTOCopyWith<CurrentWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherDTOCopyWith<$Res> {
  factory $CurrentWeatherDTOCopyWith(
          CurrentWeatherDTO value, $Res Function(CurrentWeatherDTO) then) =
      _$CurrentWeatherDTOCopyWithImpl<$Res>;
  $Res call(
      {CoordDTO? coord,
      List<WeatherDTO>? weather,
      String? base,
      MainDTO? main,
      num? visibility,
      WindDTO? wind,
      CloudsDTO? clouds,
      num? dt,
      SysDTO? sys,
      num? timezone,
      num? id,
      String? name,
      num? cod});

  $CoordDTOCopyWith<$Res>? get coord;
  $MainDTOCopyWith<$Res>? get main;
  $WindDTOCopyWith<$Res>? get wind;
  $CloudsDTOCopyWith<$Res>? get clouds;
  $SysDTOCopyWith<$Res>? get sys;
}

/// @nodoc
class _$CurrentWeatherDTOCopyWithImpl<$Res>
    implements $CurrentWeatherDTOCopyWith<$Res> {
  _$CurrentWeatherDTOCopyWithImpl(this._value, this._then);

  final CurrentWeatherDTO _value;
  // ignore: unused_field
  final $Res Function(CurrentWeatherDTO) _then;

  @override
  $Res call({
    Object? coord = freezed,
    Object? weather = freezed,
    Object? base = freezed,
    Object? main = freezed,
    Object? visibility = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? sys = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? cod = freezed,
  }) {
    return _then(_value.copyWith(
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordDTO?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDTO>?,
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDTO?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as num?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindDTO?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsDTO?,
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as num?,
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysDTO?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as num?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as num?,
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

  @override
  $MainDTOCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainDTOCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value));
    });
  }

  @override
  $WindDTOCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindDTOCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value));
    });
  }

  @override
  $CloudsDTOCopyWith<$Res>? get clouds {
    if (_value.clouds == null) {
      return null;
    }

    return $CloudsDTOCopyWith<$Res>(_value.clouds!, (value) {
      return _then(_value.copyWith(clouds: value));
    });
  }

  @override
  $SysDTOCopyWith<$Res>? get sys {
    if (_value.sys == null) {
      return null;
    }

    return $SysDTOCopyWith<$Res>(_value.sys!, (value) {
      return _then(_value.copyWith(sys: value));
    });
  }
}

/// @nodoc
abstract class _$$_CurrentWeatherDTOCopyWith<$Res>
    implements $CurrentWeatherDTOCopyWith<$Res> {
  factory _$$_CurrentWeatherDTOCopyWith(_$_CurrentWeatherDTO value,
          $Res Function(_$_CurrentWeatherDTO) then) =
      __$$_CurrentWeatherDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {CoordDTO? coord,
      List<WeatherDTO>? weather,
      String? base,
      MainDTO? main,
      num? visibility,
      WindDTO? wind,
      CloudsDTO? clouds,
      num? dt,
      SysDTO? sys,
      num? timezone,
      num? id,
      String? name,
      num? cod});

  @override
  $CoordDTOCopyWith<$Res>? get coord;
  @override
  $MainDTOCopyWith<$Res>? get main;
  @override
  $WindDTOCopyWith<$Res>? get wind;
  @override
  $CloudsDTOCopyWith<$Res>? get clouds;
  @override
  $SysDTOCopyWith<$Res>? get sys;
}

/// @nodoc
class __$$_CurrentWeatherDTOCopyWithImpl<$Res>
    extends _$CurrentWeatherDTOCopyWithImpl<$Res>
    implements _$$_CurrentWeatherDTOCopyWith<$Res> {
  __$$_CurrentWeatherDTOCopyWithImpl(
      _$_CurrentWeatherDTO _value, $Res Function(_$_CurrentWeatherDTO) _then)
      : super(_value, (v) => _then(v as _$_CurrentWeatherDTO));

  @override
  _$_CurrentWeatherDTO get _value => super._value as _$_CurrentWeatherDTO;

  @override
  $Res call({
    Object? coord = freezed,
    Object? weather = freezed,
    Object? base = freezed,
    Object? main = freezed,
    Object? visibility = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? sys = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? cod = freezed,
  }) {
    return _then(_$_CurrentWeatherDTO(
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordDTO?,
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDTO>?,
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDTO?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as num?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindDTO?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsDTO?,
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as num?,
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysDTO?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as num?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentWeatherDTO implements _CurrentWeatherDTO {
  const _$_CurrentWeatherDTO(
      {this.coord,
      final List<WeatherDTO>? weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod})
      : _weather = weather;

  factory _$_CurrentWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeatherDTOFromJson(json);

  @override
  final CoordDTO? coord;
  final List<WeatherDTO>? _weather;
  @override
  List<WeatherDTO>? get weather {
    final value = _weather;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? base;
  @override
  final MainDTO? main;
  @override
  final num? visibility;
  @override
  final WindDTO? wind;
  @override
  final CloudsDTO? clouds;
  @override
  final num? dt;
  @override
  final SysDTO? sys;
  @override
  final num? timezone;
  @override
  final num? id;
  @override
  final String? name;
  @override
  final num? cod;

  @override
  String toString() {
    return 'CurrentWeatherDTO(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWeatherDTO &&
            const DeepCollectionEquality().equals(other.coord, coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other.base, base) &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality()
                .equals(other.visibility, visibility) &&
            const DeepCollectionEquality().equals(other.wind, wind) &&
            const DeepCollectionEquality().equals(other.clouds, clouds) &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.sys, sys) &&
            const DeepCollectionEquality().equals(other.timezone, timezone) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cod, cod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coord),
      const DeepCollectionEquality().hash(_weather),
      const DeepCollectionEquality().hash(base),
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(visibility),
      const DeepCollectionEquality().hash(wind),
      const DeepCollectionEquality().hash(clouds),
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(sys),
      const DeepCollectionEquality().hash(timezone),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cod));

  @JsonKey(ignore: true)
  @override
  _$$_CurrentWeatherDTOCopyWith<_$_CurrentWeatherDTO> get copyWith =>
      __$$_CurrentWeatherDTOCopyWithImpl<_$_CurrentWeatherDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherDTOToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherDTO implements CurrentWeatherDTO {
  const factory _CurrentWeatherDTO(
      {final CoordDTO? coord,
      final List<WeatherDTO>? weather,
      final String? base,
      final MainDTO? main,
      final num? visibility,
      final WindDTO? wind,
      final CloudsDTO? clouds,
      final num? dt,
      final SysDTO? sys,
      final num? timezone,
      final num? id,
      final String? name,
      final num? cod}) = _$_CurrentWeatherDTO;

  factory _CurrentWeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeatherDTO.fromJson;

  @override
  CoordDTO? get coord;
  @override
  List<WeatherDTO>? get weather;
  @override
  String? get base;
  @override
  MainDTO? get main;
  @override
  num? get visibility;
  @override
  WindDTO? get wind;
  @override
  CloudsDTO? get clouds;
  @override
  num? get dt;
  @override
  SysDTO? get sys;
  @override
  num? get timezone;
  @override
  num? get id;
  @override
  String? get name;
  @override
  num? get cod;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWeatherDTOCopyWith<_$_CurrentWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
