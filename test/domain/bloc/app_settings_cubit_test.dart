import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/domain/bloc/app_settings/app_settings_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  late SharedPreferences sharedPreferences;
  late AppSettingsCubit appSettingsCubit;

  //разные названия городов для теста
  String tCityName = 'Санкт-Петербург';
  String tAnotherCityName = 'Москва';

  //настройка один раз перед всеми тестами, для того, чтобы хранилище не обнулялось
  setUpAll(() async {
    SharedPreferences.setMockInitialValues({});
    sharedPreferences = await SharedPreferences.getInstance();
  });

  //перед каждым тестом создается новый экземляр кубита и ему передается
  //зависимостью объект хранилища
  setUp(() {
    appSettingsCubit = AppSettingsCubit(sharedPreferences: sharedPreferences);
  });

  //простой тест на начальное состояние
  test('should have initial state AppSettingsState', () {
    expect(appSettingsCubit.state, const AppSettingsState());
  });

  blocTest<AppSettingsCubit, AppSettingsState>(
    'should emit [new data] with empty cityName when getting city name on first launch',
    //указать все для построения кубита включая моки и их зависимости
    build: () => appSettingsCubit,
    //указать какой метод кубита вызывать
    act: (cubit) => cubit.getCityName(),
    //перечень состояний, которые будут выбрасываться после вызова act
    expect: () => [
      const AppSettingsState(cityName: ''),
    ],
  );

  blocTest<AppSettingsCubit, AppSettingsState>(
    'should emit [new data] when setting city name',
    //указать все для построения кубита включая моки и их зависимости
    build: () => appSettingsCubit,
    //указать какой метод кубита вызывать
    act: (AppSettingsCubit cubit) => cubit.saveCity(tCityName),
    //перечень состояний, которые будут выбрасываться после вызова act
    expect: () => <AppSettingsState>[
      AppSettingsState(cityName: tCityName),
    ],
  );

  blocTest<AppSettingsCubit, AppSettingsState>(
    'should not emit [new data] when setting the same city name',
    //все для построения кубита включая моки и их зависимости
    build: () => appSettingsCubit,
    //установка начального состояние до вызова act
    seed: () => AppSettingsState(cityName: tCityName),
    //указать какой метод кубита вызывать
    act: (AppSettingsCubit cubit) => cubit.saveCity(tCityName),
    //перечень состояний, которые будут выбрасываться после вызова act
    expect: () => <AppSettingsState>[],
  );

  blocTest<AppSettingsCubit, AppSettingsState>(
    'should emit [new data] when setting new city name',
    //все для построения кубита включая моки и их зависимости
    build: () => appSettingsCubit,
    //установка начального состояние до вызова act
    seed: () => AppSettingsState(cityName: tAnotherCityName),
    //указать какой метод кубита вызывать
    act: (AppSettingsCubit cubit) => cubit.saveCity(tCityName),
    //перечень состояний, которые будут выбрасываться после вызова act
    expect: () => <AppSettingsState>[
      AppSettingsState(cityName: tCityName),
    ],
  );

  blocTest<AppSettingsCubit, AppSettingsState>(
    'should not emit [new data] when getting city name from storage and saving the same',
    //указать все для построения кубита включая моки и их зависимости
    build: () => appSettingsCubit,
    //установка начального состояние до вызова act
    seed: () {
      appSettingsCubit.getCityName();
      return appSettingsCubit.state;
    },
    act: (cubit) => cubit.saveCity(tCityName),
    //перечень состояний, которые будут выбрасываться после вызова act
    expect: () => <AppSettingsState>[],
  );

  blocTest<AppSettingsCubit, AppSettingsState>(
    'should emit [new data] with cityName on getCityName',
    //указать все для построения кубита включая моки и их зависимости
    build: () => appSettingsCubit,
    //указать какой метод кубита вызывать
    act: (cubit) => appSettingsCubit.getCityName(),
    //перечень состояний, которые будут выбрасываться после вызова act
    expect: () => <AppSettingsState>[AppSettingsState(cityName: tCityName)],
  );
}
