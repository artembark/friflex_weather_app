import 'dart:convert';
import 'package:friflex_weather_app/app/app_exception.dart';
import 'package:http/http.dart' as http;

import 'package:friflex_weather_app/app/app_const.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/forecast_weather_dto.dart';
import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:friflex_weather_app/data/dto/current_weather/current_weather_dto.dart';
import 'package:http/http.dart';

/// Источник данных для получения информации о погоде
/// Имплементирует абстрактный класс WeatherApiDataSource
class OpenWeatherMapApiDataSource implements WeatherApiDataSource {
  // http клиент передается зависимостью
  final http.Client client;
  //конструктор с обязательным именовным праметром http клиента
  OpenWeatherMapApiDataSource({required this.client});

  //реализация обявленных в абстрактном классе методов
  @override
  Future<CurrentWeatherDTO> getCurrentWeatherByCityName(
      {required String cityName}) async {
    //формирование параметров запроса
    final Map<String, dynamic> parameters = {
      //обязательный параметр-ключ доступа к API
      AppConst.appIdKeyName: AppConst.apiKey,
      //для скрытия ключа при публикации обычно использую dart-define
      //AppConst.appIdKeyName:const String.fromEnvironment('API_KEY', defaultValue: ' '),
      //обязательный параметр-название города
      AppConst.cityKeyName: cityName,
      //необязательный параметр - язык ответа
      AppConst.languageKeyName: AppConst.languageValue,
      //необязательный параметр - единицы измерения
      AppConst.unitsKeyName: AppConst.unitsValue,
    };
    //формирование строки запроса из хоста, пути и параметров
    //можно подменять хост для тестирования
    final Uri uri = Uri.https(
        AppConst.weatherApiHost, AppConst.currentWeatherPath, parameters);
    //получение ответа на запрос методом get
    final Response response = await client.get(uri);
    //прооверка кода ответа
    //в случае успеха - код 200
    if (response.statusCode == 200) {
      //декодирование тела запроса в json
      final json = jsonDecode(response.body);
      //первод json в объект данных дата слоя
      final CurrentWeatherDTO currentWeatherDTO =
          CurrentWeatherDTO.fromJson(json);
      return currentWeatherDTO;
    } else if (response.statusCode == 404) {
      //в случае, когда город не найден API выдает ошибку 404 и
      final json = jsonDecode(response.body);
      //если тело ответа содержит параметр "message":"city not found"
      if (json['message'] != null && json['message'] == 'city not found') {
        ///формирование для этого случая отдельного типа исключения
        //для уточнения причины ошибки в интерфейсе пользователя
        throw CityNotFoundException();
      } else {
        //т.к. теперь все 404 заходят сюда, остальные обрабатываются так
        throw PageNotFoundException();
      }
    } else {
      //все остальные исключения без конкретизации
      throw Exception();
    }
  }

  //реализация обявленных в абстрактном классе методов
  @override
  Future<ForecastWeatherDTO> getForecastByCityName(
      {required String cityName}) async {
    //формирование параметров запроса
    final Map<String, dynamic> parameters = {
      //обязательный параметр-ключ доступа к API
      AppConst.appIdKeyName: AppConst.apiKey,
      //для скрытия ключа при публикации обычно использую dart-define
      //AppConst.appIdKeyName:const String.fromEnvironment('API_KEY', defaultValue: ' '),
      //обязательный параметр-название города
      AppConst.cityKeyName: cityName,
      //необязательный параметр - количество периодов в прогнозе
      //прогноз разбит на 3-часовые части, для получения 3 дней указывается 24
      AppConst.timestampsNumberKeyName: AppConst.timestampsNumberValue,
      //необязательный параметр - язык ответа
      AppConst.languageKeyName: AppConst.languageValue,
      //необязательный параметр - единицы измерения
      AppConst.unitsKeyName: AppConst.unitsValue,
    };
    //формирование строки запроса из хоста, пути и параметров
    //можно подменять хост для тестирования
    final Uri uri = Uri.https(
        AppConst.weatherApiHost, AppConst.forecastWeatherPath, parameters);
    //получение ответа на запрос методом get
    final Response response = await client.get(uri);
    //прооверка кода ответа
    //в случае успеха - код 200
    if (response.statusCode == 200) {
      //декодирование тела запроса в json
      final json = jsonDecode(response.body);
      //первод json в объект данных дата слоя
      final ForecastWeatherDTO forecastWeatherDTO =
          ForecastWeatherDTO.fromJson(json);
      return forecastWeatherDTO;
    } else if (response.statusCode == 404) {
      //в случае, когда город не найден API выдает ошибку 404 и
      final json = jsonDecode(response.body);
      //если тело ответа содержит параметр "message":"city not found"
      if (json['message'] != null && json['message'] == 'city not found') {
        ///формирование для этого случая отдельного типа исключения
        //для уточнения причины ошибки в интерфейсе пользователя
        throw CityNotFoundException();
      } else {
        //т.к. теперь все 404 заходят сюда, остальные обрабатываются так
        throw PageNotFoundException();
      }
    } else {
      //все остальные исключения без конкретизации
      throw Exception();
    }
  }
}
