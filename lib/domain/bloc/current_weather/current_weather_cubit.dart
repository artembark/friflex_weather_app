import 'package:bloc/bloc.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/current_weather_entity.dart';
import 'package:friflex_weather_app/domain/interfaces/current_weather_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'current_weather_state.dart';

class CurrentWeatherCubit extends Cubit<CurrentWeatherState> {
  CurrentWeatherCubit({
    required this.currentWeatherRepository,
  }) : super(CurrentWeatherState());
  final CurrentWeatherRepository currentWeatherRepository;

  Future<void> fetchCurrentWeather(String cityName) async {
    emit(CurrentWeatherState(loading: true));
    await currentWeatherRepository
        .getCurrentWeather(cityName: cityName)
        .then((weatherEntity) =>
            emit(CurrentWeatherState(weatherEntity: weatherEntity)))
        .catchError((error) =>
            emit(CurrentWeatherState(errorMessage: error.toString())));
  }
}
