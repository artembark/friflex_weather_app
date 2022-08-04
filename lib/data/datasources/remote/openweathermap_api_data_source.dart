import 'dart:convert';

import 'package:friflex_weather_app/app/app_const.dart';
import 'package:http/http.dart' as http;

import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:friflex_weather_app/data/dto/current_weather/current_weather_dto.dart';

class OpenWeatherMapApiDataSource implements WeatherApiDataSource {
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
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      return CurrentWeatherDTO.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(
          '${AppConst.connectionErrorExceptionText} ${response.statusCode} ${response.body}');
    }
  }
}
