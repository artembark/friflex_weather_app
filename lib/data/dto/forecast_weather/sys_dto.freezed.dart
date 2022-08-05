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
  String? get pod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SysDTOCopyWith<SysDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysDTOCopyWith<$Res> {
  factory $SysDTOCopyWith(SysDTO value, $Res Function(SysDTO) then) =
      _$SysDTOCopyWithImpl<$Res>;
  $Res call({String? pod});
}

/// @nodoc
class _$SysDTOCopyWithImpl<$Res> implements $SysDTOCopyWith<$Res> {
  _$SysDTOCopyWithImpl(this._value, this._then);

  final SysDTO _value;
  // ignore: unused_field
  final $Res Function(SysDTO) _then;

  @override
  $Res call({
    Object? pod = freezed,
  }) {
    return _then(_value.copyWith(
      pod: pod == freezed
          ? _value.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SysDTOCopyWith<$Res> implements $SysDTOCopyWith<$Res> {
  factory _$$_SysDTOCopyWith(_$_SysDTO value, $Res Function(_$_SysDTO) then) =
      __$$_SysDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? pod});
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
    Object? pod = freezed,
  }) {
    return _then(_$_SysDTO(
      pod: pod == freezed
          ? _value.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SysDTO implements _SysDTO {
  const _$_SysDTO({this.pod});

  factory _$_SysDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SysDTOFromJson(json);

  @override
  final String? pod;

  @override
  String toString() {
    return 'SysDTO(pod: $pod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SysDTO &&
            const DeepCollectionEquality().equals(other.pod, pod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pod));

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
  const factory _SysDTO({final String? pod}) = _$_SysDTO;

  factory _SysDTO.fromJson(Map<String, dynamic> json) = _$_SysDTO.fromJson;

  @override
  String? get pod;
  @override
  @JsonKey(ignore: true)
  _$$_SysDTOCopyWith<_$_SysDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
