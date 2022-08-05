part of 'current_weather_cubit.dart';

//состояние кубита текущей погоды
class CurrentWeatherState {
  //поле для объекта текущей погоды
  final CurrentWeatherEntity? weatherEntity;
  //поле для состояния загрузки
  final bool loading;
  //поле для текста сообщения об ошибке
  final String? errorMessage;

  //конструктор состояния, по умолчанию загрузка false
  CurrentWeatherState({
    this.weatherEntity,
    this.loading = false,
    this.errorMessage,
  });
}
