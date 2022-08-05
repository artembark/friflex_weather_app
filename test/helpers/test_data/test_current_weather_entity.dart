import 'package:friflex_weather_app/domain/entities/current_weather/clouds_entity.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/coord_entity.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/current_weather_entity.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/main_entity.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/sys_entity.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/weather_entity.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/wind_entity.dart';

final testCurrentWeatherEntity = CurrentWeatherEntity(
  coord: const CoordEntity(
    lon: 30.2642,
    lat: 59.8944,
  ),
  weather: const [
    WeatherEntity(id: 800, main: 'Clear', description: 'ясно', icon: '01d')
  ],
  base: 'stations',
  main: const MainEntity(
      temp: 25.05,
      feelsLike: 24.99,
      tempMin: 25.03,
      tempMax: 25.62,
      pressure: 1018,
      humidity: 53),
  visibility: 10000,
  wind: const WindEntity(speed: 2, deg: 190, gust: null),
  clouds: const CloudsEntity(
    all: 0,
  ),
  dt: DateTime.fromMillisecondsSinceEpoch(1659681983),
  sys: SysEntity(
      type: 2,
      id: 197864,
      country: 'RU',
      sunrise: DateTime.fromMillisecondsSinceEpoch(1659664160),
      sunset: DateTime.fromMillisecondsSinceEpoch(1659723634)),
  timezone: 10800,
  id: 498817,
  name: 'Санкт-Петербург',
  cod: 200,
);
