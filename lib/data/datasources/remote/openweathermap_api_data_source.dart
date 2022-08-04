import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:friflex_weather_app/app/app_const.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/forecast_weather_dto.dart';
import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:friflex_weather_app/data/dto/current_weather/current_weather_dto.dart';

class OpenWeatherMapApiDataSource implements WeatherApiDataSource {
  final http.Client client;

  OpenWeatherMapApiDataSource({required this.client});

  @override
  Future<CurrentWeatherDTO> getCurrentWeatherByCityName(
      {required String cityName}) async {
    final Map<String, dynamic> parameters = {
      AppConst.appIdKeyName:
          const String.fromEnvironment('API_KEY', defaultValue: ' '),
      AppConst.cityKeyName: cityName,
      AppConst.languageKeyName: AppConst.languageValue,
      AppConst.unitsKeyName: AppConst.unitsValue,
    };
    final uri = Uri.https(
        AppConst.weatherApiHost, AppConst.currentWeatherPath, parameters);
    final response = await client.get(uri);
    if (response.statusCode == 200) {
      return CurrentWeatherDTO.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(
          '${AppConst.connectionErrorExceptionText} ${response.statusCode} ${response.body}');
    }
  }

  @override
  Future<ForecastWeatherDTO> getForecastByCityName(
      {required String cityName}) async {
    final Map<String, dynamic> parameters = {
      AppConst.appIdKeyName:
          const String.fromEnvironment('API_KEY', defaultValue: ' '),
      AppConst.cityKeyName: cityName,
      AppConst.timestampsNumberKeyName: AppConst.timestampsNumberValue,
      AppConst.languageKeyName: AppConst.languageValue,
      AppConst.unitsKeyName: AppConst.unitsValue,
    };
    final uri = Uri.https(
        AppConst.weatherApiHost, AppConst.forecastWeatherPath, parameters);
    final response = await client.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final forecastWeatherDTO = ForecastWeatherDTO.fromJson(json);
      return forecastWeatherDTO;
    } else {
      throw Exception(
          '${AppConst.connectionErrorExceptionText} ${response.statusCode} ${response.body}');
    }
  }
}
