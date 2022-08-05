// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rain_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RainDTO _$RainDTOFromJson(Map<String, dynamic> json) {
  return _RainDTO.fromJson(json);
}

/// @nodoc
mixin _$RainDTO {
  @JsonKey(name: '3h')
  double? get threeHour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RainDTOCopyWith<RainDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainDTOCopyWith<$Res> {
  factory $RainDTOCopyWith(RainDTO value, $Res Function(RainDTO) then) =
      _$RainDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '3h') double? threeHour});
}

/// @nodoc
class _$RainDTOCopyWithImpl<$Res> implements $RainDTOCopyWith<$Res> {
  _$RainDTOCopyWithImpl(this._value, this._then);

  final RainDTO _value;
  // ignore: unused_field
  final $Res Function(RainDTO) _then;

  @override
  $Res call({
    Object? threeHour = freezed,
  }) {
    return _then(_value.copyWith(
      threeHour: threeHour == freezed
          ? _value.threeHour
          : threeHour // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_RainDTOCopyWith<$Res> implements $RainDTOCopyWith<$Res> {
  factory _$$_RainDTOCopyWith(
          _$_RainDTO value, $Res Function(_$_RainDTO) then) =
      __$$_RainDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '3h') double? threeHour});
}

/// @nodoc
class __$$_RainDTOCopyWithImpl<$Res> extends _$RainDTOCopyWithImpl<$Res>
    implements _$$_RainDTOCopyWith<$Res> {
  __$$_RainDTOCopyWithImpl(_$_RainDTO _value, $Res Function(_$_RainDTO) _then)
      : super(_value, (v) => _then(v as _$_RainDTO));

  @override
  _$_RainDTO get _value => super._value as _$_RainDTO;

  @override
  $Res call({
    Object? threeHour = freezed,
  }) {
    return _then(_$_RainDTO(
      threeHour: threeHour == freezed
          ? _value.threeHour
          : threeHour // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RainDTO implements _RainDTO {
  const _$_RainDTO({@JsonKey(name: '3h') this.threeHour});

  factory _$_RainDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RainDTOFromJson(json);

  @override
  @JsonKey(name: '3h')
  final double? threeHour;

  @override
  String toString() {
    return 'RainDTO(threeHour: $threeHour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RainDTO &&
            const DeepCollectionEquality().equals(other.threeHour, threeHour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(threeHour));

  @JsonKey(ignore: true)
  @override
  _$$_RainDTOCopyWith<_$_RainDTO> get copyWith =>
      __$$_RainDTOCopyWithImpl<_$_RainDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RainDTOToJson(
      this,
    );
  }
}

abstract class _RainDTO implements RainDTO {
  const factory _RainDTO({@JsonKey(name: '3h') final double? threeHour}) =
      _$_RainDTO;

  factory _RainDTO.fromJson(Map<String, dynamic> json) = _$_RainDTO.fromJson;

  @override
  @JsonKey(name: '3h')
  double? get threeHour;
  @override
  @JsonKey(ignore: true)
  _$$_RainDTOCopyWith<_$_RainDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
