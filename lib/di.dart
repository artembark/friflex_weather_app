import 'package:friflex_weather_app/data/datasources/remote/openweathermap_api_data_source.dart';
import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:friflex_weather_app/data/repository/current_weather_repo_impl.dart';
import 'package:friflex_weather_app/domain/bloc/current_weather_cubit.dart';
import 'package:friflex_weather_app/domain/interfaces/current_weather_repo.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> initializeDependencies() async {
  //Cubit
  locator.registerFactory(
    () => CurrentWeatherCubit(
      currentWeatherRepository: locator(),
    ),
  );
  //Repository
  locator.registerLazySingleton<CurrentWeatherRepository>(
    () => CurrentWeatherRepoImpl(weatherApiDataSource: locator()),
  );
  //DataSource
  // TODO:pass http
  locator.registerLazySingleton<WeatherApiDataSource>(
    () => OpenWeatherMapApiDataSource(),
  );
}
