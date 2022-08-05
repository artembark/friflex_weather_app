// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_part_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastPartDTO _$$_ForecastPartDTOFromJson(Map<String, dynamic> json) =>
    _$_ForecastPartDTO(
      clouds: json['clouds'] == null
          ? null
          : CloudsDTO.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: json['dt'] as int?,
      dtTxt: json['dt_txt'] as String?,
      main: json['main'] == null
          ? null
          : MainDTO.fromJson(json['main'] as Map<String, dynamic>),
      pop: json['pop'] as num?,
      rain: json['rain'] == null
          ? null
          : RainDTO.fromJson(json['rain'] as Map<String, dynamic>),
      sys: json['sys'] == null
          ? null
          : SysDTO.fromJson(json['sys'] as Map<String, dynamic>),
      visibility: json['visibility'] as int?,
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      wind: json['wind'] == null
          ? null
          : WindDTO.fromJson(json['wind'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForecastPartDTOToJson(_$_ForecastPartDTO instance) =>
    <String, dynamic>{
      'clouds': instance.clouds?.toJson(),
      'dt': instance.dt,
      'dt_txt': instance.dtTxt,
      'main': instance.main?.toJson(),
      'pop': instance.pop,
      'rain': instance.rain?.toJson(),
      'sys': instance.sys?.toJson(),
      'visibility': instance.visibility,
      'weather': instance.weather?.map((e) => e.toJson()).toList(),
      'wind': instance.wind?.toJson(),
    };
