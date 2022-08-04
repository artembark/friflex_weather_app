import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:friflex_weather_app/data/dto/current_weather/current_weather_dto.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/current_weather_entity.dart';
import 'package:friflex_weather_app/domain/interfaces/current_weather_repo.dart';

class CurrentWeatherRepoImpl implements CurrentWeatherRepository {
  final WeatherApiDataSource weatherApiDataSource;

  CurrentWeatherRepoImpl({required this.weatherApiDataSource});

  @override
  Future<CurrentWeatherEntity> getCurrentWeather({required cityName}) async {
    try {
      final currentWeather = await weatherApiDataSource
          .getCurrentWeatherByCityName(cityName: cityName);
      return currentWeather.toEntity();
    } catch (e) {
      throw Exception(e);
    }
  }
}
