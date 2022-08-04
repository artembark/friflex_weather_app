// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clouds_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CloudsDTO _$CloudsDTOFromJson(Map<String, dynamic> json) {
  return _CloudsDTO.fromJson(json);
}

/// @nodoc
mixin _$CloudsDTO {
  num? get all => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudsDTOCopyWith<CloudsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudsDTOCopyWith<$Res> {
  factory $CloudsDTOCopyWith(CloudsDTO value, $Res Function(CloudsDTO) then) =
      _$CloudsDTOCopyWithImpl<$Res>;
  $Res call({num? all});
}

/// @nodoc
class _$CloudsDTOCopyWithImpl<$Res> implements $CloudsDTOCopyWith<$Res> {
  _$CloudsDTOCopyWithImpl(this._value, this._then);

  final CloudsDTO _value;
  // ignore: unused_field
  final $Res Function(CloudsDTO) _then;

  @override
  $Res call({
    Object? all = freezed,
  }) {
    return _then(_value.copyWith(
      all: all == freezed
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$$_CloudsDTOCopyWith<$Res> implements $CloudsDTOCopyWith<$Res> {
  factory _$$_CloudsDTOCopyWith(
          _$_CloudsDTO value, $Res Function(_$_CloudsDTO) then) =
      __$$_CloudsDTOCopyWithImpl<$Res>;
  @override
  $Res call({num? all});
}

/// @nodoc
class __$$_CloudsDTOCopyWithImpl<$Res> extends _$CloudsDTOCopyWithImpl<$Res>
    implements _$$_CloudsDTOCopyWith<$Res> {
  __$$_CloudsDTOCopyWithImpl(
      _$_CloudsDTO _value, $Res Function(_$_CloudsDTO) _then)
      : super(_value, (v) => _then(v as _$_CloudsDTO));

  @override
  _$_CloudsDTO get _value => super._value as _$_CloudsDTO;

  @override
  $Res call({
    Object? all = freezed,
  }) {
    return _then(_$_CloudsDTO(
      all: all == freezed
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CloudsDTO implements _CloudsDTO {
  const _$_CloudsDTO({this.all});

  factory _$_CloudsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CloudsDTOFromJson(json);

  @override
  final num? all;

  @override
  String toString() {
    return 'CloudsDTO(all: $all)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CloudsDTO &&
            const DeepCollectionEquality().equals(other.all, all));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(all));

  @JsonKey(ignore: true)
  @override
  _$$_CloudsDTOCopyWith<_$_CloudsDTO> get copyWith =>
      __$$_CloudsDTOCopyWithImpl<_$_CloudsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CloudsDTOToJson(
      this,
    );
  }
}

abstract class _CloudsDTO implements CloudsDTO {
  const factory _CloudsDTO({final num? all}) = _$_CloudsDTO;

  factory _CloudsDTO.fromJson(Map<String, dynamic> json) =
      _$_CloudsDTO.fromJson;

  @override
  num? get all;
  @override
  @JsonKey(ignore: true)
  _$$_CloudsDTOCopyWith<_$_CloudsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
