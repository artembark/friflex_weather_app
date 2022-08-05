import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/forecast_weather_dto.dart';

import '../../helpers/test_data/test_forecast_weather_dto.dart';
import '../../helpers/test_data/test_forecast_weather_entity.dart';

void main() {
  group('to entity', () {
    test('should return a valid forecast weather entity from dto', () {
      final result = testForecastWeatherDTO.toEntity();
      expect(result, equals(testForecastWeatherEntity));
    });
  });
  group('from json', () {
    test(
      'should return a valid forecast weather dto from json',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          File('test/helpers/test_data/test_forecast_weather_response.json')
              .readAsStringSync(),
        );
        final result = ForecastWeatherDTO.fromJson(jsonMap);
        expect(result, equals(testForecastWeatherDTO));
      },
    );
  });
}
