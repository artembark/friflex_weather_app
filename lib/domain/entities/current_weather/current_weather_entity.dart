import 'package:equatable/equatable.dart';

import 'clouds_entity.dart';
import 'coord_entity.dart';
import 'main_entity.dart';
import 'sys_entity.dart';
import 'weather_entity.dart';
import 'wind_entity.dart';

class CurrentWeatherEntity extends Equatable {
  final CoordEntity? coord;
  final List<WeatherEntity>? weather;
  final String? base;
  final MainEntity? main;
  final num? visibility;
  final WindEntity? wind;
  final CloudsEntity? clouds;
  final DateTime? dt;
  final SysEntity? sys;
  final num? timezone;
  final num? id;
  final String? name;
  final num? cod;

  const CurrentWeatherEntity(
      {required this.coord,
      required this.weather,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind,
      required this.clouds,
      required this.dt,
      required this.sys,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod});

  @override
  List<Object?> get props => [
        coord,
        weather,
        base,
        main,
        visibility,
        wind,
        clouds,
        dt,
        sys,
        timezone,
        id,
        name,
        cod,
      ];
}
