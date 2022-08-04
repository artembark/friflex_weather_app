import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_weather_entity.dart';

///Интерфейс для получения прогноза погоды для заданного города
abstract class ForecastWeatherRepository {
  ForecastWeatherRepository._();

  ///необходимо переопределить этот метод для получения объекта с прогнозом погоды
  Future<ForecastWeatherEntity> getForecastWeather({required cityName});
}
