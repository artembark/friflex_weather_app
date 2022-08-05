import 'package:friflex_weather_app/domain/entities/forecast_weather/weather_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/sys_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/main_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/city_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/clouds_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/coord_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_part_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_weather_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/wind_entity.dart';

final testForecastWeatherEntity = ForecastWeatherEntity(
    city: CityEntity(
        coord: const CoordEntity(lon: 30.2642, lat: 59.8944),
        country: 'RU',
        id: 498817,
        name: 'Санкт-Петербург',
        population: 4953219,
        sunrise: DateTime.fromMillisecondsSinceEpoch(1659664160),
        sunset: DateTime.fromMillisecondsSinceEpoch(1659723634),
        timezone: 10800),
    cnt: 2,
    cod: '200',
    list: [
      ForecastPartEntity(
          clouds: const CloudsEntity(all: 3),
          dt: DateTime.fromMillisecondsSinceEpoch(1659690000 * 1000),
          dtTxt: '2022-08-05 09:00:00',
          main: const MainEntity(
              feelsLike: 25.74,
              pressure: 1019,
              humidity: 47,
              seaLevel: 1019,
              grndLevel: 1019,
              tempMin: 25.87,
              tempKf: -0.37,
              tempMax: 26.24,
              temp: 25.87),
          pop: 0,
          rain: null,
          sys: const SysEntity(pod: 'd'),
          visibility: 10000,
          weather: const [
            WeatherEntity(
                id: 800, main: 'Clear', description: 'ясно', icon: '01d')
          ],
          wind: const WindEntity(speed: 3.56, deg: 184, gust: 4.93)),
      ForecastPartEntity(
          clouds: const CloudsEntity(all: 11),
          dt: DateTime.fromMillisecondsSinceEpoch(1659700800 * 1000),
          dtTxt: '2022-08-05 12:00:00',
          main: const MainEntity(
              feelsLike: 27.11,
              pressure: 1019,
              humidity: 39,
              seaLevel: 1019,
              grndLevel: 1017,
              tempMin: 27.4,
              tempKf: -0.85,
              tempMax: 28.25,
              temp: 27.4),
          pop: 0,
          rain: null,
          sys: const SysEntity(pod: 'd'),
          visibility: 10000,
          weather: const [
            WeatherEntity(
                id: 801,
                main: 'Clouds',
                description: 'небольшая облачность',
                icon: '02d')
          ],
          wind: const WindEntity(speed: 4.04, deg: 188, gust: 5.76))
    ],
    message: 0);
