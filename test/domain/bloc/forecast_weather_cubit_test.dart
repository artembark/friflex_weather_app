import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/app/app_exception.dart';
import 'package:friflex_weather_app/domain/bloc/forecast_weather/forecast_weather_cubit.dart';
import 'package:friflex_weather_app/domain/interfaces/forecast_weather_repo.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/test_data/test_forecast_weather_entity.dart';

//объявляется класс мока репозитория прогноза погоды
class MockForecastWeatherRepository extends Mock
    implements ForecastWeatherRepository {}

void main() {
  //объект мока репозитория
  late MockForecastWeatherRepository mockForecastWeatherRepository;
  //объект кубита прогноза погоды
  late ForecastWeatherCubit forecastWeatherCubit;

  //название города для тестов
  const tCityName = 'Санкт-Петербург';

  //настраивается перед каждым тестом
  setUp(() {
    //инициализируется мок репозитория
    mockForecastWeatherRepository = MockForecastWeatherRepository();
    //инициализируется кубит и зависимостью передается мок репозитория
    forecastWeatherCubit = ForecastWeatherCubit(
        forecastWeatherRepository: mockForecastWeatherRepository);
  });

  //простой тест на начальное состояние
  test('should have initial state ForecastWeatherState', () {
    expect(forecastWeatherCubit.state, const ForecastWeatherState());
  });

  blocTest<ForecastWeatherCubit, ForecastWeatherState>(
      'should emit [loading, has data] when data has gotten successfully',
      // настройка поведения моков
      // при обращению к репозиторию будем возвращать энтити текущей погоды
      setUp: () => when(() => mockForecastWeatherRepository.getForecastWeather(
              cityName: tCityName))
          .thenAnswer((_) async => testForecastWeatherEntity),
      //указать все для построения кубита включая моки и их зависимости
      build: () => forecastWeatherCubit,
      //указать какой метод кубита вызывать
      act: (ForecastWeatherCubit cubit) =>
          cubit.fetchForecastWeather(tCityName),
      //ожидание асинхронных опреаций
      wait: const Duration(milliseconds: 100),
      //перечень состояний, которые будут выбрасываться после вызова act
      expect: () => <ForecastWeatherState>[
            const ForecastWeatherState(loading: true),
            ForecastWeatherState(
                forecastPartList: testForecastWeatherEntity.list),
          ],
      //убедиться были ли вызваны методы
      verify: (ForecastWeatherCubit cubit) => verify(() =>
          mockForecastWeatherRepository.getForecastWeather(
              cityName: tCityName)));

  blocTest<ForecastWeatherCubit, ForecastWeatherState>(
      'should emit [loading, error] when city not found exception throws',
      setUp: () => when(() => mockForecastWeatherRepository.getForecastWeather(
              cityName: tCityName))
          .thenAnswer((_) async => throw CityNotFoundException()),
      build: () => forecastWeatherCubit,
      act: (ForecastWeatherCubit cubit) =>
          cubit.fetchForecastWeather(tCityName),
      wait: const Duration(milliseconds: 100),
      expect: () => <ForecastWeatherState>[
            const ForecastWeatherState(loading: true),
            const ForecastWeatherState(errorMessage: 'Такой город не найден'),
          ],
      verify: (_) => verify(() => mockForecastWeatherRepository
          .getForecastWeather(cityName: tCityName)));

  blocTest<ForecastWeatherCubit, ForecastWeatherState>(
      'should emit [loading, error] when exception occurs',
      setUp: () => when(() => mockForecastWeatherRepository.getForecastWeather(
          cityName: tCityName)).thenAnswer((_) async => throw Exception()),
      build: () => forecastWeatherCubit,
      act: (ForecastWeatherCubit cubit) =>
          cubit.fetchForecastWeather(tCityName),
      wait: const Duration(milliseconds: 100),
      expect: () => <ForecastWeatherState>[
            const ForecastWeatherState(loading: true),
            const ForecastWeatherState(errorMessage: 'Ошибка получения данных'),
          ],
      verify: (_) => verify(() => mockForecastWeatherRepository
          .getForecastWeather(cityName: tCityName)));
}
