import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/app/app_exception.dart';
import 'package:friflex_weather_app/domain/bloc/current_weather/current_weather_cubit.dart';
import 'package:friflex_weather_app/domain/interfaces/current_weather_repo.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/test_data/test_current_weather_entity.dart';

//объявляется класс мока репозитория текущей погоды
class MockCurrentWeatherRepository extends Mock
    implements CurrentWeatherRepository {}

void main() {
  //объект мока репозитория
  late MockCurrentWeatherRepository mockCurrentWeatherRepository;
  //объект кубита текущей погоды
  late CurrentWeatherCubit currentWeatherCubit;

  //название города для тестов
  const tCityName = 'Санкт-Петербург';

  //настраивается перед каждым тестом
  setUp(() {
    //инициализируется мок репозитория
    mockCurrentWeatherRepository = MockCurrentWeatherRepository();
    //инициализируется кубит и зависимостью передается мок репозитория
    currentWeatherCubit = CurrentWeatherCubit(
        currentWeatherRepository: mockCurrentWeatherRepository);
  });

  //простой тест на начальное состояние
  test('should have initial state CurrentWeatherState', () {
    expect(currentWeatherCubit.state, const CurrentWeatherState());
  });

  blocTest<CurrentWeatherCubit, CurrentWeatherState>(
      'should emit [loading, has data] when data has gotten successfully',
      // настройка поведения моков
      // при обращению к репозиторию будем возвращать энтити текущей погоды
      setUp: () => when(() => mockCurrentWeatherRepository.getCurrentWeather(
              cityName: tCityName))
          .thenAnswer((_) async => testCurrentWeatherEntity),
      //указать все для построения кубита включая моки и их зависимости
      build: () => currentWeatherCubit,
      //указать какой метод кубита вызывать
      act: (cubit) => cubit.fetchCurrentWeather(tCityName),
      //ожидание асинхронных опреаций
      wait: const Duration(milliseconds: 100),
      //перечень состояний, которые будут выбрасываться после вызова act
      expect: () => <CurrentWeatherState>[
            const CurrentWeatherState(loading: true),
            CurrentWeatherState(weatherEntity: testCurrentWeatherEntity),
          ],
      //убедиться были ли вызваны методы
      verify: (cubit) => verify(() =>
          mockCurrentWeatherRepository.getCurrentWeather(cityName: tCityName)));

  blocTest<CurrentWeatherCubit, CurrentWeatherState>(
      'should emit [loading, error] when city not found exception throws',
      setUp: () => when(() => mockCurrentWeatherRepository.getCurrentWeather(
              cityName: tCityName))
          .thenAnswer((_) async => throw CityNotFoundException()),
      build: () => currentWeatherCubit,
      act: (CurrentWeatherCubit cubit) => cubit.fetchCurrentWeather(tCityName),
      wait: const Duration(milliseconds: 100),
      expect: () => <CurrentWeatherState>[
            const CurrentWeatherState(loading: true),
            const CurrentWeatherState(errorMessage: 'Такой город не найден'),
          ],
      verify: (_) => verify(() =>
          mockCurrentWeatherRepository.getCurrentWeather(cityName: tCityName)));

  blocTest<CurrentWeatherCubit, CurrentWeatherState>(
      'should emit [loading, error] when exception occurs',
      setUp: () => when(() => mockCurrentWeatherRepository.getCurrentWeather(
          cityName: tCityName)).thenAnswer((_) async => throw Exception()),
      build: () => currentWeatherCubit,
      act: (CurrentWeatherCubit cubit) => cubit.fetchCurrentWeather(tCityName),
      wait: const Duration(milliseconds: 100),
      expect: () => <CurrentWeatherState>[
            const CurrentWeatherState(loading: true),
            const CurrentWeatherState(errorMessage: 'Ошибка получения данных'),
          ],
      verify: (_) => verify(() =>
          mockCurrentWeatherRepository.getCurrentWeather(cityName: tCityName)));
}
