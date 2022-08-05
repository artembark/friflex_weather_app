import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/domain/bloc/current_weather/current_weather_cubit.dart';
import 'package:friflex_weather_app/domain/interfaces/current_weather_repo.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/test_data/test_current_weather_entity.dart';

class MockCurrentWeatherRepository extends Mock
    implements CurrentWeatherRepository {}

void main() {
  late MockCurrentWeatherRepository mockCurrentWeatherRepository;
  late CurrentWeatherCubit currentWeatherCubit;

  setUp(() {
    mockCurrentWeatherRepository = MockCurrentWeatherRepository();
    currentWeatherCubit = CurrentWeatherCubit(
        currentWeatherRepository: mockCurrentWeatherRepository);
  });

  test('should have initial state CurrentWeatherState', () {
    expect(currentWeatherCubit.state, const CurrentWeatherState());
  });

  const cityName = 'Санкт-Петербург';

  blocTest<CurrentWeatherCubit, CurrentWeatherState>(
      'should emit [loading, has data] when data has gotten successfully',
      // настройка поведения моков
      // при обращению к репозиторию будем возвращать энтити текущей погоды
      setUp: () => when(() => mockCurrentWeatherRepository.getCurrentWeather(
              cityName: cityName))
          .thenAnswer((_) async => testCurrentWeatherEntity),
      //указать все для построения кубита включая моки и их зависимости
      build: () => currentWeatherCubit,
      //указать какой метод кубита вызывать
      act: (cubit) => cubit.fetchCurrentWeather(cityName),
      //ожидание асинхронных опреаций
      wait: const Duration(milliseconds: 100),
      //перечень состояний, которые будут выбрасываться после вызова act
      expect: () => [
            const CurrentWeatherState(loading: true),
            CurrentWeatherState(weatherEntity: testCurrentWeatherEntity),
          ],
      //убедиться были ли вызваны методы
      verify: (cubit) => verify(() =>
          mockCurrentWeatherRepository.getCurrentWeather(cityName: cityName)));
}
