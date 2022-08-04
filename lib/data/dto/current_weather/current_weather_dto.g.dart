// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentWeatherDTO _$$_CurrentWeatherDTOFromJson(Map<String, dynamic> json) =>
    _$_CurrentWeatherDTO(
      coord: json['coord'] == null
          ? null
          : CoordDTO.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      base: json['base'] as String?,
      main: json['main'] == null
          ? null
          : MainDTO.fromJson(json['main'] as Map<String, dynamic>),
      visibility: json['visibility'] as num?,
      wind: json['wind'] == null
          ? null
          : WindDTO.fromJson(json['wind'] as Map<String, dynamic>),
      clouds: json['clouds'] == null
          ? null
          : CloudsDTO.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: json['dt'] as num?,
      sys: json['sys'] == null
          ? null
          : SysDTO.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: json['timezone'] as num?,
      id: json['id'] as num?,
      name: json['name'] as String?,
      cod: json['cod'] as num?,
    );

Map<String, dynamic> _$$_CurrentWeatherDTOToJson(
        _$_CurrentWeatherDTO instance) =>
    <String, dynamic>{
      'coord': instance.coord?.toJson(),
      'weather': instance.weather?.map((e) => e.toJson()).toList(),
      'base': instance.base,
      'main': instance.main?.toJson(),
      'visibility': instance.visibility,
      'wind': instance.wind?.toJson(),
      'clouds': instance.clouds?.toJson(),
      'dt': instance.dt,
      'sys': instance.sys?.toJson(),
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };
