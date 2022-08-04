import 'package:equatable/equatable.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/coord_entity.dart';

class CityEntity extends Equatable {
  final CoordEntity? coord;
  final String? country;
  final int? id;
  final String? name;
  final int? population;
  final DateTime? sunrise;
  final DateTime? sunset;
  final int? timezone;

  const CityEntity({
    required this.coord,
    required this.country,
    required this.id,
    required this.name,
    required this.population,
    required this.sunrise,
    required this.sunset,
    required this.timezone,
  });

  @override
  List<Object?> get props =>
      [coord, country, id, name, population, sunrise, sunset, timezone];
}
