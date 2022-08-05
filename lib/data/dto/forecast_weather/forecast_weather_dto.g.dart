// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastWeatherDTO _$$_ForecastWeatherDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ForecastWeatherDTO(
      city: json['city'] == null
          ? null
          : CityDTO.fromJson(json['city'] as Map<String, dynamic>),
      cnt: json['cnt'] as int?,
      cod: json['cod'] as String?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => ForecastPartDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as int?,
    );

Map<String, dynamic> _$$_ForecastWeatherDTOToJson(
        _$_ForecastWeatherDTO instance) =>
    <String, dynamic>{
      'city': instance.city?.toJson(),
      'cnt': instance.cnt,
      'cod': instance.cod,
      'list': instance.list?.map((e) => e.toJson()).toList(),
      'message': instance.message,
    };
