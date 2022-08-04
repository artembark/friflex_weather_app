import 'package:friflex_weather_app/data/dto/current_weather/current_weather_dto.dart';

abstract class WeatherApiDataSource {
  Future<CurrentWeatherDTO> getCurrentWeatherByCityName({
    required String cityName,
  });
}
