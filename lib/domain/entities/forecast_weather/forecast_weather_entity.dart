import 'package:equatable/equatable.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/city_entity.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_part_entity.dart';

class ForecastWeatherEntity extends Equatable {
  final CityEntity? city;
  final int? cnt;
  final String? cod;
  final List<ForecastPartEntity>? list;
  final int? message;

  const ForecastWeatherEntity({
    required this.city,
    required this.cnt,
    required this.cod,
    required this.list,
    required this.message,
  });

  @override
  List<Object?> get props => [city, cnt, cod, list, message];
}
