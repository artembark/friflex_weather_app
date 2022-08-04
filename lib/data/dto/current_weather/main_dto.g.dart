// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainDTO _$$_MainDTOFromJson(Map<String, dynamic> json) => _$_MainDTO(
      temp: json['temp'] as num?,
      feelsLike: json['feels_like'] as num?,
      tempMin: json['temp_min'] as num?,
      tempMax: json['temp_max'] as num?,
      pressure: json['pressure'] as num?,
      humidity: json['humidity'] as num?,
    );

Map<String, dynamic> _$$_MainDTOToJson(_$_MainDTO instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
