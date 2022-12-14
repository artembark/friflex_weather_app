import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:friflex_weather_app/data/datasources/remote/openweathermap_api_data_source.dart';
import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:friflex_weather_app/data/repository/current_weather_repo_impl.dart';
import 'package:friflex_weather_app/data/repository/forecast_weather_repo_impl.dart';
import 'package:friflex_weather_app/domain/bloc/app_settings/app_settings_cubit.dart';
import 'package:friflex_weather_app/domain/bloc/current_weather/current_weather_cubit.dart';
import 'package:friflex_weather_app/domain/bloc/forecast_weather/forecast_weather_cubit.dart';
import 'package:friflex_weather_app/domain/bloc/internet_connection/connected_bloc.dart';
import 'package:friflex_weather_app/domain/interfaces/current_weather_repo.dart';
import 'package:friflex_weather_app/domain/interfaces/forecast_weather_repo.dart';
import 'package:get_it/get_it.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

final GetIt locator = GetIt.instance;

///Конфигурирование зависимостей
Future<void> initializeDependencies() async {
  //Bloc/Cubit
  //Кубит состояния текущей погоды
  locator.registerFactory(
    () => CurrentWeatherCubit(
      currentWeatherRepository: locator(),
    ),
  );
  //Кубит состояния прогноза погоды
  locator.registerFactory(
    () => ForecastWeatherCubit(
      forecastWeatherRepository: locator(),
    ),
  );
  //Блок состояния соединения
  locator.registerFactory(
    () => ConnectedBloc(
      connectivity: locator(),
    ),
  );
  //Кубит настроек приложения
  locator.registerFactory(
    () => AppSettingsCubit(
      sharedPreferences: locator(),
    ),
  );
  //Репозитории
  //Репозитоий текущей погоды
  locator.registerLazySingleton<CurrentWeatherRepository>(
    () => CurrentWeatherRepoImpl(weatherApiDataSource: locator()),
  );
  //Репозиторий прогноза погоды
  locator.registerLazySingleton<ForecastWeatherRepository>(
    () => ForecastWeatherRepoImpl(weatherApiDataSource: locator()),
  );
  //Источники данных
  //Источник данных погоды OpenWeatherMap
  locator.registerLazySingleton<WeatherApiDataSource>(
    () => OpenWeatherMapApiDataSource(client: locator()),
  );

  //Внешние зависимости
  //http-клиент для запросов
  locator.registerLazySingleton(() => http.Client());
  //объект для получения информации о текущем состоянии соединения
  locator.registerLazySingleton(() => Connectivity());

  //для сохранения последнего выбранного города в настройки
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerLazySingleton(() => sharedPreferences);
}
