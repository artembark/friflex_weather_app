//константы приложения
abstract class AppConst {
  AppConst._();

  //название приложения
  static const String appName = 'FriFlex Weather App';

  //обычно ключ задаю через --dart-define и String.fromEnvironment,
  //для простоты пусть останется тут
  static const String apiKey = '1151ee38f9a7f66edb887800324960bf';

  //константы http-запроса
  static const String weatherApiHost = 'api.openweathermap.org';
  static const String currentWeatherPath = '/data/2.5/weather';
  static const String forecastWeatherPath = '/data/2.5/forecast';
  static const String appIdKeyName = 'appid';
  static const String cityKeyName = 'q';
  static const String languageKeyName = 'lang';
  static const String languageValue = 'ru';
  static const String unitsKeyName = 'units';
  static const String unitsValue = 'metric';
  static const String timestampsNumberKeyName = 'cnt';
  static const String timestampsNumberValue = '24';

  //константы маршруторв
  static const initialRoute = '/';
  static const currentWeatherRoute = '/current';
  static const forecastWeatherRoute = '/forecast';

  //ключ для хранилища shared preferences
  static const sharedPrefCityKey = 'cityName';
}
