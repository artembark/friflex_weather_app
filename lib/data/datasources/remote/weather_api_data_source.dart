import 'package:friflex_weather_app/data/dto/current_weather/current_weather_dto.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/forecast_weather_dto.dart';

//абстрактный класс описывающий обязательные для имплементации
//методы и их параметры для получения данных от API
abstract class WeatherApiDataSource {
  //метод для получения текущей погоды
  Future<CurrentWeatherDTO> getCurrentWeatherByCityName({
    required String cityName,
  });
  //метод для получения прогноза погоды
  Future<ForecastWeatherDTO> getForecastByCityName({
    required String cityName,
  });
}
