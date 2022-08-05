part of 'current_weather_cubit.dart';

//состояние кубита текущей погоды
//расширение от Equatable для возможности сравнивать состояния
class CurrentWeatherState extends Equatable {
  //поле для объекта текущей погоды
  final CurrentWeatherEntity? weatherEntity;

  //поле для состояния загрузки
  final bool loading;

  //поле для текста сообщения об ошибке
  final String? errorMessage;

  //конструктор состояния, по умолчанию загрузка false
  const CurrentWeatherState({
    this.weatherEntity,
    this.loading = false,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [weatherEntity, loading, errorMessage];
}
