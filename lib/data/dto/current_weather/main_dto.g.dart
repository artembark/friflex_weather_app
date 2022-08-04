// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainDTO _$$_MainDTOFromJson(Map<String, dynamic> json) => _$_MainDTO(
      temp: json['temp'] as num?,
      feelsLike: json['feelsLike'] as num?,
      tempMin: json['tempMin'] as num?,
      tempMax: json['tempMax'] as num?,
      pressure: json['pressure'] as num?,
      humidity: json['humidity'] as num?,
    );

Map<String, dynamic> _$$_MainDTOToJson(_$_MainDTO instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
