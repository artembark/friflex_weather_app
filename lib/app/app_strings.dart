//строковые константы приложения
abstract class AppStrings {
  AppStrings._();

  static const errorConnection = 'Ошибка. Проверьте доступ к сети интернет.';
  static const errorNoCityName = 'Необходимо ввести название города';
  static const errorShortName = 'Слишком короткое название';
  static const errorUnexpected = 'Неожиданная ошибка';

  static const backButtonText = 'Назад';
  static const refreshButtonText = 'Обновить';

  static const labelTemperature = 'Температура:';
  static const labelHumidity = 'Влажность:';
  static const labelWindSpeed = 'Скорость ветра:';
  static const labelActualForecast = 'Прогноз актуален на:';
  static const labelGetWeather = 'Узнать погоду в городе:';
  static const labelConfirmButton = 'Подтвердить';
  static const labelChooseAnother = 'Выбрать другой';
  static const labelCurrentWeather = 'Текущая погода';
  static const labelCity = 'Город';
  static const labelForecastFull = 'Прогноз погоды';
  static const labelForecastShort = 'Прогноз';

  static const labelWindUnits = 'м/с';
}
