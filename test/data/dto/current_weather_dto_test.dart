import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/data/dto/current_weather/current_weather_dto.dart';

import '../../helpers/test_data/test_current_weather_dto.dart';
import '../../helpers/test_data/test_current_weather_entity.dart';

void main() {
  group('to entity', () {
    test('should return a valid current weather entity from dto', () {
      final result = testCurrentWeatherDTO.toEntity();
      expect(result, equals(testCurrentWeatherEntity));
    });
  });

  group('from json', () {
    test(
      'should return a valid current weather dto from json',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(
          File('test/helpers/test_data/test_current_weather_response.json')
              .readAsStringSync(),
        );
        final result = CurrentWeatherDTO.fromJson(jsonMap);
        expect(result, equals(testCurrentWeatherDTO));
      },
    );
  });
}
