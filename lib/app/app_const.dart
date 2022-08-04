//константы приложения
abstract class AppConst {
  AppConst._();

  static const String appName = 'FriFlex Weather App ';

  //request constants
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

  //route constants
  static const initialRoute = '/';
  static const currentWeatherRoute = '/current';
  static const forecastWeatherRoute = '/forecast';

  //shared preferences key
  static const sharedPrefCityKey = 'cityName';

  static const String connectionErrorExceptionText = 'Connection Error';
}
