// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainDTO _$$_MainDTOFromJson(Map<String, dynamic> json) => _$_MainDTO(
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      grndLevel: json['grnd_level'] as int?,
      humidity: json['humidity'] as int?,
      pressure: json['pressure'] as int?,
      seaLevel: json['sea_level'] as int?,
      temp: (json['temp'] as num?)?.toDouble(),
      tempKf: (json['temp_kf'] as num?)?.toDouble(),
      tempMax: (json['temp_max'] as num?)?.toDouble(),
      tempMin: (json['temp_min'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_MainDTOToJson(_$_MainDTO instance) =>
    <String, dynamic>{
      'feels_like': instance.feelsLike,
      'grnd_level': instance.grndLevel,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'sea_level': instance.seaLevel,
      'temp': instance.temp,
      'temp_kf': instance.tempKf,
      'temp_max': instance.tempMax,
      'temp_min': instance.tempMin,
    };
