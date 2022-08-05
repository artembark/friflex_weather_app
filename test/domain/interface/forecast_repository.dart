import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:friflex_weather_app/data/repository/forecast_weather_repo_impl.dart';
import 'package:friflex_weather_app/domain/interfaces/forecast_weather_repo.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/test_data/test_forecast_weather_dto.dart';
import '../../helpers/test_data/test_forecast_weather_entity.dart';

class MockWeatherApiDataSource extends Mock implements WeatherApiDataSource {}

void main() {
  late ForecastWeatherRepository forecastWeatherRepository;
  late MockWeatherApiDataSource mockWeatherApiDataSource;

  setUp(() {
    mockWeatherApiDataSource = MockWeatherApiDataSource();
    forecastWeatherRepository =
        ForecastWeatherRepoImpl(weatherApiDataSource: mockWeatherApiDataSource);
  });
  const String tCityName = 'Санкт-Петербург';
  test('should get forecast entity from repository', () async {
    when(() =>
            mockWeatherApiDataSource.getForecastByCityName(cityName: tCityName))
        .thenAnswer((invocation) => Future.value(testForecastWeatherDTO));
    final result =
        await forecastWeatherRepository.getForecastWeather(cityName: tCityName);
    expect(result, equals(testForecastWeatherEntity));
  });
}
