// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainDTO _$MainDTOFromJson(Map<String, dynamic> json) {
  return _MainDTO.fromJson(json);
}

/// @nodoc
mixin _$MainDTO {
  num? get temp => throw _privateConstructorUsedError;
  num? get feelsLike => throw _privateConstructorUsedError;
  num? get tempMin => throw _privateConstructorUsedError;
  num? get tempMax => throw _privateConstructorUsedError;
  num? get pressure => throw _privateConstructorUsedError;
  num? get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainDTOCopyWith<MainDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDTOCopyWith<$Res> {
  factory $MainDTOCopyWith(MainDTO value, $Res Function(MainDTO) then) =
      _$MainDTOCopyWithImpl<$Res>;
  $Res call(
      {num? temp,
      num? feelsLike,
      num? tempMin,
      num? tempMax,
      num? pressure,
      num? humidity});
}

/// @nodoc
class _$MainDTOCopyWithImpl<$Res> implements $MainDTOCopyWith<$Res> {
  _$MainDTOCopyWithImpl(this._value, this._then);

  final MainDTO _value;
  // ignore: unused_field
  final $Res Function(MainDTO) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num?,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as num?,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as num?,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as num?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as num?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$$_MainDTOCopyWith<$Res> implements $MainDTOCopyWith<$Res> {
  factory _$$_MainDTOCopyWith(
          _$_MainDTO value, $Res Function(_$_MainDTO) then) =
      __$$_MainDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {num? temp,
      num? feelsLike,
      num? tempMin,
      num? tempMax,
      num? pressure,
      num? humidity});
}

/// @nodoc
class __$$_MainDTOCopyWithImpl<$Res> extends _$MainDTOCopyWithImpl<$Res>
    implements _$$_MainDTOCopyWith<$Res> {
  __$$_MainDTOCopyWithImpl(_$_MainDTO _value, $Res Function(_$_MainDTO) _then)
      : super(_value, (v) => _then(v as _$_MainDTO));

  @override
  _$_MainDTO get _value => super._value as _$_MainDTO;

  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_$_MainDTO(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num?,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as num?,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as num?,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as num?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as num?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainDTO implements _MainDTO {
  const _$_MainDTO(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity});

  factory _$_MainDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MainDTOFromJson(json);

  @override
  final num? temp;
  @override
  final num? feelsLike;
  @override
  final num? tempMin;
  @override
  final num? tempMax;
  @override
  final num? pressure;
  @override
  final num? humidity;

  @override
  String toString() {
    return 'MainDTO(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainDTO &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.feelsLike, feelsLike) &&
            const DeepCollectionEquality().equals(other.tempMin, tempMin) &&
            const DeepCollectionEquality().equals(other.tempMax, tempMax) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(feelsLike),
      const DeepCollectionEquality().hash(tempMin),
      const DeepCollectionEquality().hash(tempMax),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(humidity));

  @JsonKey(ignore: true)
  @override
  _$$_MainDTOCopyWith<_$_MainDTO> get copyWith =>
      __$$_MainDTOCopyWithImpl<_$_MainDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainDTOToJson(
      this,
    );
  }
}

abstract class _MainDTO implements MainDTO {
  const factory _MainDTO(
      {final num? temp,
      final num? feelsLike,
      final num? tempMin,
      final num? tempMax,
      final num? pressure,
      final num? humidity}) = _$_MainDTO;

  factory _MainDTO.fromJson(Map<String, dynamic> json) = _$_MainDTO.fromJson;

  @override
  num? get temp;
  @override
  num? get feelsLike;
  @override
  num? get tempMin;
  @override
  num? get tempMax;
  @override
  num? get pressure;
  @override
  num? get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_MainDTOCopyWith<_$_MainDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
