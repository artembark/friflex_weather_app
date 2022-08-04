import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/weather_entity.dart';

part 'weather_dto.freezed.dart';

part 'weather_dto.g.dart';

@freezed
class WeatherDTO with _$WeatherDTO {
  const factory WeatherDTO({
    num? id,
    String? main,
    String? description,
    String? icon,
  }) = _WeatherDTO;

  factory WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherDTOFromJson(json);
}

extension WeatherMapper on WeatherDTO {
  WeatherEntity toEntity() {
    return WeatherEntity(
      id: id,
      main: main,
      description: description,
      icon: icon,
    );
  }
}
