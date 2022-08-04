// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDTO _$WeatherDTOFromJson(Map<String, dynamic> json) {
  return _WeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$WeatherDTO {
  num? get id => throw _privateConstructorUsedError;
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDTOCopyWith<WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDTOCopyWith<$Res> {
  factory $WeatherDTOCopyWith(
          WeatherDTO value, $Res Function(WeatherDTO) then) =
      _$WeatherDTOCopyWithImpl<$Res>;
  $Res call({num? id, String? main, String? description, String? icon});
}

/// @nodoc
class _$WeatherDTOCopyWithImpl<$Res> implements $WeatherDTOCopyWith<$Res> {
  _$WeatherDTOCopyWithImpl(this._value, this._then);

  final WeatherDTO _value;
  // ignore: unused_field
  final $Res Function(WeatherDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherDTOCopyWith<$Res>
    implements $WeatherDTOCopyWith<$Res> {
  factory _$$_WeatherDTOCopyWith(
          _$_WeatherDTO value, $Res Function(_$_WeatherDTO) then) =
      __$$_WeatherDTOCopyWithImpl<$Res>;
  @override
  $Res call({num? id, String? main, String? description, String? icon});
}

/// @nodoc
class __$$_WeatherDTOCopyWithImpl<$Res> extends _$WeatherDTOCopyWithImpl<$Res>
    implements _$$_WeatherDTOCopyWith<$Res> {
  __$$_WeatherDTOCopyWithImpl(
      _$_WeatherDTO _value, $Res Function(_$_WeatherDTO) _then)
      : super(_value, (v) => _then(v as _$_WeatherDTO));

  @override
  _$_WeatherDTO get _value => super._value as _$_WeatherDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_WeatherDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDTO implements _WeatherDTO {
  const _$_WeatherDTO({this.id, this.main, this.description, this.icon});

  factory _$_WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDTOFromJson(json);

  @override
  final num? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  @override
  String toString() {
    return 'WeatherDTO(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherDTOCopyWith<_$_WeatherDTO> get copyWith =>
      __$$_WeatherDTOCopyWithImpl<_$_WeatherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDTOToJson(
      this,
    );
  }
}

abstract class _WeatherDTO implements WeatherDTO {
  const factory _WeatherDTO(
      {final num? id,
      final String? main,
      final String? description,
      final String? icon}) = _$_WeatherDTO;

  factory _WeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_WeatherDTO.fromJson;

  @override
  num? get id;
  @override
  String? get main;
  @override
  String? get description;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDTOCopyWith<_$_WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
