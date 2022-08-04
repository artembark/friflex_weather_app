// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wind_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WindDTO _$WindDTOFromJson(Map<String, dynamic> json) {
  return _WindDTO.fromJson(json);
}

/// @nodoc
mixin _$WindDTO {
  num? get speed => throw _privateConstructorUsedError;
  num? get deg => throw _privateConstructorUsedError;
  num? get gust => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindDTOCopyWith<WindDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindDTOCopyWith<$Res> {
  factory $WindDTOCopyWith(WindDTO value, $Res Function(WindDTO) then) =
      _$WindDTOCopyWithImpl<$Res>;
  $Res call({num? speed, num? deg, num? gust});
}

/// @nodoc
class _$WindDTOCopyWithImpl<$Res> implements $WindDTOCopyWith<$Res> {
  _$WindDTOCopyWithImpl(this._value, this._then);

  final WindDTO _value;
  // ignore: unused_field
  final $Res Function(WindDTO) _then;

  @override
  $Res call({
    Object? speed = freezed,
    Object? deg = freezed,
    Object? gust = freezed,
  }) {
    return _then(_value.copyWith(
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as num?,
      deg: deg == freezed
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as num?,
      gust: gust == freezed
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$$_WindDTOCopyWith<$Res> implements $WindDTOCopyWith<$Res> {
  factory _$$_WindDTOCopyWith(
          _$_WindDTO value, $Res Function(_$_WindDTO) then) =
      __$$_WindDTOCopyWithImpl<$Res>;
  @override
  $Res call({num? speed, num? deg, num? gust});
}

/// @nodoc
class __$$_WindDTOCopyWithImpl<$Res> extends _$WindDTOCopyWithImpl<$Res>
    implements _$$_WindDTOCopyWith<$Res> {
  __$$_WindDTOCopyWithImpl(_$_WindDTO _value, $Res Function(_$_WindDTO) _then)
      : super(_value, (v) => _then(v as _$_WindDTO));

  @override
  _$_WindDTO get _value => super._value as _$_WindDTO;

  @override
  $Res call({
    Object? speed = freezed,
    Object? deg = freezed,
    Object? gust = freezed,
  }) {
    return _then(_$_WindDTO(
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as num?,
      deg: deg == freezed
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as num?,
      gust: gust == freezed
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WindDTO implements _WindDTO {
  const _$_WindDTO({this.speed, this.deg, this.gust});

  factory _$_WindDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WindDTOFromJson(json);

  @override
  final num? speed;
  @override
  final num? deg;
  @override
  final num? gust;

  @override
  String toString() {
    return 'WindDTO(speed: $speed, deg: $deg, gust: $gust)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WindDTO &&
            const DeepCollectionEquality().equals(other.speed, speed) &&
            const DeepCollectionEquality().equals(other.deg, deg) &&
            const DeepCollectionEquality().equals(other.gust, gust));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(speed),
      const DeepCollectionEquality().hash(deg),
      const DeepCollectionEquality().hash(gust));

  @JsonKey(ignore: true)
  @override
  _$$_WindDTOCopyWith<_$_WindDTO> get copyWith =>
      __$$_WindDTOCopyWithImpl<_$_WindDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WindDTOToJson(
      this,
    );
  }
}

abstract class _WindDTO implements WindDTO {
  const factory _WindDTO({final num? speed, final num? deg, final num? gust}) =
      _$_WindDTO;

  factory _WindDTO.fromJson(Map<String, dynamic> json) = _$_WindDTO.fromJson;

  @override
  num? get speed;
  @override
  num? get deg;
  @override
  num? get gust;
  @override
  @JsonKey(ignore: true)
  _$$_WindDTOCopyWith<_$_WindDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
