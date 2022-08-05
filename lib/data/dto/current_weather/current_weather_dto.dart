import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/data/dto/current_weather/sys_dto.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/current_weather_entity.dart';

import 'clouds_dto.dart';
import 'coord_dto.dart';
import 'main_dto.dart';
import 'weather_dto.dart';
import 'wind_dto.dart';

part 'current_weather_dto.freezed.dart';

part 'current_weather_dto.g.dart';

@freezed
class CurrentWeatherDTO with _$CurrentWeatherDTO {
  const factory CurrentWeatherDTO({
    CoordDTO? coord,
    List<WeatherDTO>? weather,
    String? base,
    MainDTO? main,
    num? visibility,
    WindDTO? wind,
    CloudsDTO? clouds,
    num? dt,
    SysDTO? sys,
    num? timezone,
    num? id,
    String? name,
    num? cod,
  }) = _CurrentWeatherDTO;

  factory CurrentWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDTOFromJson(json);
}

//маппер данных
//преобразование форматов времени
extension CurrentWeatherMapper on CurrentWeatherDTO {
  CurrentWeatherEntity toEntity() {
    final time = dt?.toInt();
    DateTime? convertedTime;
    if (time != null) {
      convertedTime = DateTime.fromMillisecondsSinceEpoch(time * 1000);
    }
    return CurrentWeatherEntity(
        coord: coord?.toEntity(),
        weather: weather?.map((e) => e.toEntity()).toList(),
        base: base,
        main: main?.toEntity(),
        visibility: visibility,
        wind: wind?.toEntity(),
        clouds: clouds?.toEntity(),
        dt: convertedTime,
        sys: sys?.toEntity(),
        timezone: timezone,
        id: id,
        name: name,
        cod: cod);
  }
}
