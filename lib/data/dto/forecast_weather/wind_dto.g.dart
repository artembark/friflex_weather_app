// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WindDTO _$$_WindDTOFromJson(Map<String, dynamic> json) => _$_WindDTO(
      speed: json['speed'] as num?,
      deg: json['deg'] as num?,
      gust: json['gust'] as num?,
    );

Map<String, dynamic> _$$_WindDTOToJson(_$_WindDTO instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };
