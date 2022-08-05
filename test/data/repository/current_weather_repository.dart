import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:friflex_weather_app/data/repository/current_weather_repo_impl.dart';
import 'package:friflex_weather_app/domain/interfaces/current_weather_repo.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/test_data/test_current_weather_dto.dart';
import '../../helpers/test_data/test_current_weather_entity.dart';

class MockWeatherApiDataSource extends Mock implements WeatherApiDataSource {}

void main() {
  late CurrentWeatherRepository currentWeatherRepository;
  late MockWeatherApiDataSource mockWeatherApiDataSource;

  setUp(() {
    mockWeatherApiDataSource = MockWeatherApiDataSource();
    currentWeatherRepository =
        CurrentWeatherRepoImpl(weatherApiDataSource: mockWeatherApiDataSource);
  });
  const String tCityName = 'Санкт-Петербург';
  test('should get current weather entity from repository', () async {
    when(() => mockWeatherApiDataSource.getCurrentWeatherByCityName(
            cityName: tCityName))
        .thenAnswer((invocation) => Future.value(testCurrentWeatherDTO));
    final result =
        await currentWeatherRepository.getCurrentWeather(cityName: tCityName);
    expect(result, equals(testCurrentWeatherEntity));
  });
}
