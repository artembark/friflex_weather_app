// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forecast_part_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastPartDTO _$ForecastPartDTOFromJson(Map<String, dynamic> json) {
  return _ForecastPartDTO.fromJson(json);
}

/// @nodoc
mixin _$ForecastPartDTO {
  CloudsDTO? get clouds => throw _privateConstructorUsedError;
  int? get dt => throw _privateConstructorUsedError;
  String? get dtTxt => throw _privateConstructorUsedError;
  MainDTO? get main => throw _privateConstructorUsedError;
  num? get pop => throw _privateConstructorUsedError;
  RainDTO? get rain => throw _privateConstructorUsedError;
  SysDTO? get sys => throw _privateConstructorUsedError;
  int? get visibility => throw _privateConstructorUsedError;
  List<WeatherDTO>? get weather => throw _privateConstructorUsedError;
  WindDTO? get wind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastPartDTOCopyWith<ForecastPartDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastPartDTOCopyWith<$Res> {
  factory $ForecastPartDTOCopyWith(
          ForecastPartDTO value, $Res Function(ForecastPartDTO) then) =
      _$ForecastPartDTOCopyWithImpl<$Res>;
  $Res call(
      {CloudsDTO? clouds,
      int? dt,
      String? dtTxt,
      MainDTO? main,
      num? pop,
      RainDTO? rain,
      SysDTO? sys,
      int? visibility,
      List<WeatherDTO>? weather,
      WindDTO? wind});

  $CloudsDTOCopyWith<$Res>? get clouds;
  $MainDTOCopyWith<$Res>? get main;
  $RainDTOCopyWith<$Res>? get rain;
  $SysDTOCopyWith<$Res>? get sys;
  $WindDTOCopyWith<$Res>? get wind;
}

/// @nodoc
class _$ForecastPartDTOCopyWithImpl<$Res>
    implements $ForecastPartDTOCopyWith<$Res> {
  _$ForecastPartDTOCopyWithImpl(this._value, this._then);

  final ForecastPartDTO _value;
  // ignore: unused_field
  final $Res Function(ForecastPartDTO) _then;

  @override
  $Res call({
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? dtTxt = freezed,
    Object? main = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
    Object? sys = freezed,
    Object? visibility = freezed,
    Object? weather = freezed,
    Object? wind = freezed,
  }) {
    return _then(_value.copyWith(
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsDTO?,
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      dtTxt: dtTxt == freezed
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDTO?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as num?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as RainDTO?,
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysDTO?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDTO>?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindDTO?,
    ));
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
  $MainDTOCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainDTOCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value));
    });
  }

  @override
  $RainDTOCopyWith<$Res>? get rain {
    if (_value.rain == null) {
      return null;
    }

    return $RainDTOCopyWith<$Res>(_value.rain!, (value) {
      return _then(_value.copyWith(rain: value));
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

  @override
  $WindDTOCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindDTOCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value));
    });
  }
}

/// @nodoc
abstract class _$$_ForecastPartDTOCopyWith<$Res>
    implements $ForecastPartDTOCopyWith<$Res> {
  factory _$$_ForecastPartDTOCopyWith(
          _$_ForecastPartDTO value, $Res Function(_$_ForecastPartDTO) then) =
      __$$_ForecastPartDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {CloudsDTO? clouds,
      int? dt,
      String? dtTxt,
      MainDTO? main,
      num? pop,
      RainDTO? rain,
      SysDTO? sys,
      int? visibility,
      List<WeatherDTO>? weather,
      WindDTO? wind});

  @override
  $CloudsDTOCopyWith<$Res>? get clouds;
  @override
  $MainDTOCopyWith<$Res>? get main;
  @override
  $RainDTOCopyWith<$Res>? get rain;
  @override
  $SysDTOCopyWith<$Res>? get sys;
  @override
  $WindDTOCopyWith<$Res>? get wind;
}

/// @nodoc
class __$$_ForecastPartDTOCopyWithImpl<$Res>
    extends _$ForecastPartDTOCopyWithImpl<$Res>
    implements _$$_ForecastPartDTOCopyWith<$Res> {
  __$$_ForecastPartDTOCopyWithImpl(
      _$_ForecastPartDTO _value, $Res Function(_$_ForecastPartDTO) _then)
      : super(_value, (v) => _then(v as _$_ForecastPartDTO));

  @override
  _$_ForecastPartDTO get _value => super._value as _$_ForecastPartDTO;

  @override
  $Res call({
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? dtTxt = freezed,
    Object? main = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
    Object? sys = freezed,
    Object? visibility = freezed,
    Object? weather = freezed,
    Object? wind = freezed,
  }) {
    return _then(_$_ForecastPartDTO(
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsDTO?,
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      dtTxt: dtTxt == freezed
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDTO?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as num?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as RainDTO?,
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysDTO?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDTO>?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastPartDTO implements _ForecastPartDTO {
  const _$_ForecastPartDTO(
      {this.clouds,
      this.dt,
      this.dtTxt,
      this.main,
      this.pop,
      this.rain,
      this.sys,
      this.visibility,
      final List<WeatherDTO>? weather,
      this.wind})
      : _weather = weather;

  factory _$_ForecastPartDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastPartDTOFromJson(json);

  @override
  final CloudsDTO? clouds;
  @override
  final int? dt;
  @override
  final String? dtTxt;
  @override
  final MainDTO? main;
  @override
  final num? pop;
  @override
  final RainDTO? rain;
  @override
  final SysDTO? sys;
  @override
  final int? visibility;
  final List<WeatherDTO>? _weather;
  @override
  List<WeatherDTO>? get weather {
    final value = _weather;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WindDTO? wind;

  @override
  String toString() {
    return 'ForecastPartDTO(clouds: $clouds, dt: $dt, dtTxt: $dtTxt, main: $main, pop: $pop, rain: $rain, sys: $sys, visibility: $visibility, weather: $weather, wind: $wind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastPartDTO &&
            const DeepCollectionEquality().equals(other.clouds, clouds) &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.dtTxt, dtTxt) &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality().equals(other.pop, pop) &&
            const DeepCollectionEquality().equals(other.rain, rain) &&
            const DeepCollectionEquality().equals(other.sys, sys) &&
            const DeepCollectionEquality()
                .equals(other.visibility, visibility) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other.wind, wind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clouds),
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(dtTxt),
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(pop),
      const DeepCollectionEquality().hash(rain),
      const DeepCollectionEquality().hash(sys),
      const DeepCollectionEquality().hash(visibility),
      const DeepCollectionEquality().hash(_weather),
      const DeepCollectionEquality().hash(wind));

  @JsonKey(ignore: true)
  @override
  _$$_ForecastPartDTOCopyWith<_$_ForecastPartDTO> get copyWith =>
      __$$_ForecastPartDTOCopyWithImpl<_$_ForecastPartDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastPartDTOToJson(
      this,
    );
  }
}

abstract class _ForecastPartDTO implements ForecastPartDTO {
  const factory _ForecastPartDTO(
      {final CloudsDTO? clouds,
      final int? dt,
      final String? dtTxt,
      final MainDTO? main,
      final num? pop,
      final RainDTO? rain,
      final SysDTO? sys,
      final int? visibility,
      final List<WeatherDTO>? weather,
      final WindDTO? wind}) = _$_ForecastPartDTO;

  factory _ForecastPartDTO.fromJson(Map<String, dynamic> json) =
      _$_ForecastPartDTO.fromJson;

  @override
  CloudsDTO? get clouds;
  @override
  int? get dt;
  @override
  String? get dtTxt;
  @override
  MainDTO? get main;
  @override
  num? get pop;
  @override
  RainDTO? get rain;
  @override
  SysDTO? get sys;
  @override
  int? get visibility;
  @override
  List<WeatherDTO>? get weather;
  @override
  WindDTO? get wind;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastPartDTOCopyWith<_$_ForecastPartDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
