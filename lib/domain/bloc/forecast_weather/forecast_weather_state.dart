part of 'forecast_weather_cubit.dart';

class ForecastWeatherState {
  final List<ForecastPartEntity>? forecastPartList;
  final bool loading;
  final String? errorMessage;

  ForecastWeatherState({
    this.forecastPartList,
    this.loading = false,
    this.errorMessage,
  });
}
