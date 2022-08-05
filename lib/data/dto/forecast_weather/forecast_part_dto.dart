import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/clouds_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/main_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/rain_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/sys_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/weather_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/wind_dto.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_part_entity.dart';

part 'forecast_part_dto.freezed.dart';

part 'forecast_part_dto.g.dart';

@freezed
class ForecastPartDTO with _$ForecastPartDTO {
  const factory ForecastPartDTO({
    CloudsDTO? clouds,
    int? dt,
    String? dtTxt,
    MainDTO? main,
    num? pop,
    RainDTO? rain,
    SysDTO? sys,
    int? visibility,
    List<WeatherDTO>? weather,
    WindDTO? wind,
  }) = _ForecastPartDTO;

  factory ForecastPartDTO.fromJson(Map<String, dynamic> json) =>
      _$ForecastPartDTOFromJson(json);
}

//маппер данных
//реализация преобразования даты
extension ForecastPartMapper on ForecastPartDTO {
  ForecastPartEntity toEntity() {
    final time = dt?.toInt();
    DateTime? convertedTime;
    if (time != null) {
      convertedTime = DateTime.fromMillisecondsSinceEpoch(time * 1000);
    }
    return ForecastPartEntity(
        clouds: clouds?.toEntity(),
        dt: convertedTime,
        dtTxt: dtTxt,
        main: main?.toEntity(),
        pop: pop,
        rain: rain?.toEntity(),
        sys: sys?.toEntity(),
        visibility: visibility,
        weather: weather?.map((e) => e.toEntity()).toList(),
        wind: wind?.toEntity());
  }
}
