import '../entities/current_weather/current_weather_entity.dart';

///Интерфейс для получения текущей погоды для заданного города
abstract class CurrentWeatherRepository {
  CurrentWeatherRepository._();

  ///необходимо переопределить этот метод для получения объекта с текущей погодой
  Future<CurrentWeatherEntity> getCurrentWeather({required String cityName});
}
