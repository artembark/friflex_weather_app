import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/coord_dto.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/city_entity.dart';

part 'city_dto.freezed.dart';

part 'city_dto.g.dart';

@freezed
class CityDTO with _$CityDTO {
  const factory CityDTO({
    CoordDTO? coord,
    String? country,
    int? id,
    String? name,
    int? population,
    int? sunrise,
    int? sunset,
    int? timezone,
  }) = _CityDTO;

  factory CityDTO.fromJson(Map<String, dynamic> json) =>
      _$CityDTOFromJson(json);
}

extension CityMapper on CityDTO {
  CityEntity toEntity() {
    return CityEntity(
        coord: coord?.toEntity(),
        country: country,
        id: id,
        name: name,
        population: population,
        sunrise: DateTime.fromMillisecondsSinceEpoch(sunrise?.toInt() ?? 0),
        sunset: DateTime.fromMillisecondsSinceEpoch(sunset?.toInt() ?? 0),
        timezone: timezone);
  }
}
