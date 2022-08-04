import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/forecast_weather_dto.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_weather_entity.dart';
import 'package:friflex_weather_app/domain/interfaces/forecast_weather_repo.dart';

class ForecastWeatherRepoImpl implements ForecastWeatherRepository {
  final WeatherApiDataSource weatherApiDataSource;

  ForecastWeatherRepoImpl({required this.weatherApiDataSource});

  @override
  Future<ForecastWeatherEntity> getForecastWeather({required cityName}) async {
    try {
      final forecastWeather =
          await weatherApiDataSource.getForecastByCityName(cityName: cityName);
      return forecastWeather.toEntity();
    } catch (e) {
      throw Exception(e);
    }
  }
}
