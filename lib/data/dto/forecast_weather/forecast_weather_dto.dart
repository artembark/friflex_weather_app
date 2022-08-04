import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/city_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/forecast_part_dto.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_weather_entity.dart';

part 'forecast_weather_dto.freezed.dart';

part 'forecast_weather_dto.g.dart';

@freezed
class ForecastWeatherDTO with _$ForecastWeatherDTO {
  const factory ForecastWeatherDTO({
    CityDTO? city,
    int? cnt,
    String? cod,
    List<ForecastPartDTO>? list,
    int? message,
  }) = _ForecastWeatherDTO;

  factory ForecastWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherDTOFromJson(json);
}

extension ForecastWeatherMapper on ForecastWeatherDTO {
  ForecastWeatherEntity toEntity() {
    return ForecastWeatherEntity(
      city: city?.toEntity(),
      cnt: cnt,
      cod: cod,
      list: list?.map((e) => e.toEntity()).toList(),
      message: message,
    );
  }
}
