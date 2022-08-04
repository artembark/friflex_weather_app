// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SysDTO _$$_SysDTOFromJson(Map<String, dynamic> json) => _$_SysDTO(
      type: json['type'] as num?,
      id: json['id'] as num?,
      country: json['country'] as String?,
      sunrise: json['sunrise'] as num?,
      sunset: json['sunset'] as num?,
    );

Map<String, dynamic> _$$_SysDTOToJson(_$_SysDTO instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
