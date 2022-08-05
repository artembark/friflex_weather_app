part of 'forecast_weather_cubit.dart';

//состояние кубита прогноза погоды
class ForecastWeatherState {
  //поле для списка объектов прогноза погоды
  final List<ForecastPartEntity>? forecastPartList;
  //поле для состояния загрузки
  final bool loading;
  //поле для текста сообщения об ошибке
  final String? errorMessage;

  //конструктор состояния, по умолчанию загрузка false
  ForecastWeatherState({
    this.forecastPartList,
    this.loading = false,
    this.errorMessage,
  });
}
