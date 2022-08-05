// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityDTO _$$_CityDTOFromJson(Map<String, dynamic> json) => _$_CityDTO(
      coord: json['coord'] == null
          ? null
          : CoordDTO.fromJson(json['coord'] as Map<String, dynamic>),
      country: json['country'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      population: json['population'] as int?,
      sunrise: json['sunrise'] as int?,
      sunset: json['sunset'] as int?,
      timezone: json['timezone'] as int?,
    );

Map<String, dynamic> _$$_CityDTOToJson(_$_CityDTO instance) =>
    <String, dynamic>{
      'coord': instance.coord?.toJson(),
      'country': instance.country,
      'id': instance.id,
      'name': instance.name,
      'population': instance.population,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'timezone': instance.timezone,
    };
