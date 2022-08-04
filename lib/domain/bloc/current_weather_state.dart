part of 'current_weather_cubit.dart';

class CurrentWeatherState {
  final CurrentWeatherEntity? weatherEntity;
  final bool loading;
  final String? errorMessage;

  CurrentWeatherState({
    this.weatherEntity,
    this.loading = false,
    this.errorMessage,
  });
}
