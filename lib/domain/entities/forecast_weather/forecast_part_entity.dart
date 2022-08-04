import 'package:equatable/equatable.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/clouds_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/main_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/rain_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/sys_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/weather_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/wind_entity.dart';

class ForecastPartEntity extends Equatable
    implements Comparable<ForecastPartEntity> {
  final CloudsEntity? clouds;
  final DateTime? dt;
  final String? dtTxt;
  final MainEntity? main;
  final num? pop;
  final RainEntity? rain;
  final SysEntity? sys;
  final int? visibility;
  final List<WeatherEntity>? weather;
  final WindEntity? wind;

  const ForecastPartEntity(
      {required this.clouds,
      required this.dt,
      required this.dtTxt,
      required this.main,
      required this.pop,
      required this.rain,
      required this.sys,
      required this.visibility,
      required this.weather,
      required this.wind});

  @override
  List<Object?> get props =>
      [clouds, dt, dtTxt, main, pop, rain, sys, visibility, weather, wind];

  @override
  int compareTo(ForecastPartEntity other) {
    final temp = main?.temp;
    final otherTemp = other.main?.temp;
    if (temp == null || otherTemp == null) return 0;
    return temp.compareTo(otherTemp);
  }
}
