import 'package:friflex_weather_app/data/dto/forecast_weather/city_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/clouds_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/coord_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/forecast_part_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/forecast_weather_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/main_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/sys_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/weather_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/wind_dto.dart';

const testForecastWeatherDTO = ForecastWeatherDTO(
    city: CityDTO(
        coord: CoordDTO(lon: 30.2642, lat: 59.8944),
        country: 'RU',
        id: 498817,
        name: 'Санкт-Петербург',
        population: 4953219,
        sunrise: 1659664160,
        sunset: 1659723634,
        timezone: 10800),
    cnt: 2,
    cod: '200',
    list: [
      ForecastPartDTO(
          clouds: CloudsDTO(all: 3),
          dt: 1659690000,
          dtTxt: '2022-08-05 09:00:00',
          main: MainDTO(
              feelsLike: 25.74,
              grndLevel: 1019,
              humidity: 47,
              pressure: 1019,
              seaLevel: 1019,
              temp: 25.87,
              tempKf: -0.37,
              tempMax: 26.24,
              tempMin: 25.87),
          pop: 0,
          rain: null,
          sys: SysDTO(pod: 'd'),
          visibility: 10000,
          weather: [
            WeatherDTO(id: 800, main: 'Clear', description: 'ясно', icon: '01d')
          ],
          wind: WindDTO(speed: 3.56, deg: 184, gust: 4.93)),
      ForecastPartDTO(
          clouds: CloudsDTO(all: 11),
          dt: 1659700800,
          dtTxt: '2022-08-05 12:00:00',
          main: MainDTO(
              feelsLike: 27.11,
              grndLevel: 1017,
              humidity: 39,
              pressure: 1019,
              seaLevel: 1019,
              temp: 27.4,
              tempKf: -0.85,
              tempMax: 28.25,
              tempMin: 27.4),
          pop: 0,
          rain: null,
          sys: SysDTO(pod: 'd'),
          visibility: 10000,
          weather: [
            WeatherDTO(
                id: 801,
                main: 'Clouds',
                description: 'небольшая облачность',
                icon: '02d')
          ],
          wind: WindDTO(speed: 4.04, deg: 188, gust: 5.76))
    ],
    message: 0);
