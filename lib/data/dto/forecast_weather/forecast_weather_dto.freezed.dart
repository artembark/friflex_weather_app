// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forecast_weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastWeatherDTO _$ForecastWeatherDTOFromJson(Map<String, dynamic> json) {
  return _ForecastWeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherDTO {
  CityDTO? get city => throw _privateConstructorUsedError;
  int? get cnt => throw _privateConstructorUsedError;
  String? get cod => throw _privateConstructorUsedError;
  List<ForecastPartDTO>? get list => throw _privateConstructorUsedError;
  int? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherDTOCopyWith<ForecastWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherDTOCopyWith<$Res> {
  factory $ForecastWeatherDTOCopyWith(
          ForecastWeatherDTO value, $Res Function(ForecastWeatherDTO) then) =
      _$ForecastWeatherDTOCopyWithImpl<$Res>;
  $Res call(
      {CityDTO? city,
      int? cnt,
      String? cod,
      List<ForecastPartDTO>? list,
      int? message});

  $CityDTOCopyWith<$Res>? get city;
}

/// @nodoc
class _$ForecastWeatherDTOCopyWithImpl<$Res>
    implements $ForecastWeatherDTOCopyWith<$Res> {
  _$ForecastWeatherDTOCopyWithImpl(this._value, this._then);

  final ForecastWeatherDTO _value;
  // ignore: unused_field
  final $Res Function(ForecastWeatherDTO) _then;

  @override
  $Res call({
    Object? city = freezed,
    Object? cnt = freezed,
    Object? cod = freezed,
    Object? list = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityDTO?,
      cnt: cnt == freezed
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastPartDTO>?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $CityDTOCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityDTOCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
abstract class _$$_ForecastWeatherDTOCopyWith<$Res>
    implements $ForecastWeatherDTOCopyWith<$Res> {
  factory _$$_ForecastWeatherDTOCopyWith(_$_ForecastWeatherDTO value,
          $Res Function(_$_ForecastWeatherDTO) then) =
      __$$_ForecastWeatherDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {CityDTO? city,
      int? cnt,
      String? cod,
      List<ForecastPartDTO>? list,
      int? message});

  @override
  $CityDTOCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_ForecastWeatherDTOCopyWithImpl<$Res>
    extends _$ForecastWeatherDTOCopyWithImpl<$Res>
    implements _$$_ForecastWeatherDTOCopyWith<$Res> {
  __$$_ForecastWeatherDTOCopyWithImpl(
      _$_ForecastWeatherDTO _value, $Res Function(_$_ForecastWeatherDTO) _then)
      : super(_value, (v) => _then(v as _$_ForecastWeatherDTO));

  @override
  _$_ForecastWeatherDTO get _value => super._value as _$_ForecastWeatherDTO;

  @override
  $Res call({
    Object? city = freezed,
    Object? cnt = freezed,
    Object? cod = freezed,
    Object? list = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ForecastWeatherDTO(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityDTO?,
      cnt: cnt == freezed
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastPartDTO>?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastWeatherDTO implements _ForecastWeatherDTO {
  const _$_ForecastWeatherDTO(
      {this.city,
      this.cnt,
      this.cod,
      final List<ForecastPartDTO>? list,
      this.message})
      : _list = list;

  factory _$_ForecastWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastWeatherDTOFromJson(json);

  @override
  final CityDTO? city;
  @override
  final int? cnt;
  @override
  final String? cod;
  final List<ForecastPartDTO>? _list;
  @override
  List<ForecastPartDTO>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? message;

  @override
  String toString() {
    return 'ForecastWeatherDTO(city: $city, cnt: $cnt, cod: $cod, list: $list, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastWeatherDTO &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.cnt, cnt) &&
            const DeepCollectionEquality().equals(other.cod, cod) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(cnt),
      const DeepCollectionEquality().hash(cod),
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ForecastWeatherDTOCopyWith<_$_ForecastWeatherDTO> get copyWith =>
      __$$_ForecastWeatherDTOCopyWithImpl<_$_ForecastWeatherDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastWeatherDTOToJson(
      this,
    );
  }
}

abstract class _ForecastWeatherDTO implements ForecastWeatherDTO {
  const factory _ForecastWeatherDTO(
      {final CityDTO? city,
      final int? cnt,
      final String? cod,
      final List<ForecastPartDTO>? list,
      final int? message}) = _$_ForecastWeatherDTO;

  factory _ForecastWeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_ForecastWeatherDTO.fromJson;

  @override
  CityDTO? get city;
  @override
  int? get cnt;
  @override
  String? get cod;
  @override
  List<ForecastPartDTO>? get list;
  @override
  int? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastWeatherDTOCopyWith<_$_ForecastWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
