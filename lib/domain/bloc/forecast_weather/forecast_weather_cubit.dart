import 'package:bloc/bloc.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_part_entity.dart';
import 'package:friflex_weather_app/domain/interfaces/forecast_weather_repo.dart';

part 'forecast_weather_state.dart';

class ForecastWeatherCubit extends Cubit<ForecastWeatherState> {
  ForecastWeatherCubit({required this.forecastWeatherRepository})
      : super(ForecastWeatherState());
  final ForecastWeatherRepository forecastWeatherRepository;

  Future<void> fetchForecastWeather(String cityName) async {
    emit(ForecastWeatherState(loading: true));
    await forecastWeatherRepository
        .getForecastWeather(cityName: cityName)
        .then((forecastEntity) {
      final forecastPartList = forecastEntity.list;
      forecastPartList?.sort();
      emit(ForecastWeatherState(forecastPartList: forecastPartList));
    }).catchError((error) => emit(ForecastWeatherState(errorMessage: error)));
  }
}
