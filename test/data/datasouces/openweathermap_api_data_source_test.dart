import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/app/app_exception.dart';
import 'package:friflex_weather_app/data/datasources/remote/openweathermap_api_data_source.dart';
import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;

import '../../helpers/test_data/test_current_weather_dto.dart';
import '../../helpers/test_data/test_forecast_weather_dto.dart';

class MockHttpClient extends Mock implements http.Client {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('get current weather test', () {
    late http.Client httpClient;
    late WeatherApiDataSource weatherApiDataSource;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      weatherApiDataSource = OpenWeatherMapApiDataSource(client: httpClient);
    });
    const String tCityName = 'Санкт-Петербург';

    group('current weather datasource test', () {
      test('should return valid current weather dto from datasource', () async {
        final String responseBody =
            File('test/helpers/test_data/test_current_weather_response.json')
                .readAsStringSync();
        when(() => httpClient.get(any()))
            .thenAnswer((_) async => Response(responseBody, 200, headers: {
                  HttpHeaders.contentTypeHeader:
                      'application/json; charset=utf-8',
                }));
        final result = await weatherApiDataSource.getCurrentWeatherByCityName(
            cityName: tCityName);
        expect(result, equals(testCurrentWeatherDTO));
      });

      test(
          'should return CityNotFoundException if code 404 and message if city not found',
          () async {
        const String errorResponse =
            '{"cod": "404","message": "city not found"}';
        when(() => httpClient.get(any()))
            .thenAnswer((_) async => Response(errorResponse, 404, headers: {
                  HttpHeaders.contentTypeHeader:
                      'application/json; charset=utf-8',
                }));

        expect(
            () async => await weatherApiDataSource.getCurrentWeatherByCityName(
                cityName: tCityName),
            throwsA(isA<CityNotFoundException>()));
      });
    });

    group('forecast datasource test', () {
      test('should return valid forecast weather dto from datasource',
          () async {
        final String responseBody =
            File('test/helpers/test_data/test_forecast_weather_response.json')
                .readAsStringSync();
        when(() => httpClient.get(any()))
            .thenAnswer((_) async => Response(responseBody, 200, headers: {
                  HttpHeaders.contentTypeHeader:
                      'application/json; charset=utf-8',
                }));
        final result = await weatherApiDataSource.getForecastByCityName(
            cityName: tCityName);
        expect(result, equals(testForecastWeatherDTO));
      });

      test(
          'should return CityNotFoundException if code 404 and message if city not found',
          () async {
        const String errorResponse =
            '{"cod": "404","message": "city not found"}';
        when(() => httpClient.get(any()))
            .thenAnswer((_) async => Response(errorResponse, 404, headers: {
                  HttpHeaders.contentTypeHeader:
                      'application/json; charset=utf-8',
                }));

        expect(
            () async => await weatherApiDataSource.getForecastByCityName(
                cityName: tCityName),
            throwsA(isA<CityNotFoundException>()));
      });
    });
  });
}
