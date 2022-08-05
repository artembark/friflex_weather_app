import 'package:friflex_weather_app/data/dto/current_weather/clouds_dto.dart';
import 'package:friflex_weather_app/data/dto/current_weather/coord_dto.dart';
import 'package:friflex_weather_app/data/dto/current_weather/current_weather_dto.dart';
import 'package:friflex_weather_app/data/dto/current_weather/main_dto.dart';
import 'package:friflex_weather_app/data/dto/current_weather/sys_dto.dart';
import 'package:friflex_weather_app/data/dto/current_weather/weather_dto.dart';
import 'package:friflex_weather_app/data/dto/current_weather/wind_dto.dart';

const testCurrentWeatherDTO = CurrentWeatherDTO(
    coord: CoordDTO(lon: 30.2642, lat: 59.8944),
    weather: [
      WeatherDTO(id: 800, main: 'Clear', description: 'ясно', icon: '01d')
    ],
    base: 'stations',
    main: MainDTO(
        temp: 25.05,
        feelsLike: 24.99,
        tempMin: 25.03,
        tempMax: 25.62,
        pressure: 1018,
        humidity: 53),
    visibility: 10000,
    wind: WindDTO(speed: 2, deg: 190, gust: null),
    clouds: CloudsDTO(all: 0),
    dt: 1659681983,
    sys: SysDTO(
        type: 2,
        id: 197864,
        country: 'RU',
        sunrise: 1659664160,
        sunset: 1659723634),
    timezone: 10800,
    id: 498817,
    name: 'Санкт-Петербург',
    cod: 200);
