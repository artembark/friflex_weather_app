import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/main_entity.dart';

part 'main_dto.freezed.dart';

part 'main_dto.g.dart';

@freezed
class MainDTO with _$MainDTO {
  const factory MainDTO({
    double? feelsLike,
    int? grndLevel,
    int? humidity,
    int? pressure,
    int? seaLevel,
    double? temp,
    double? tempKf,
    double? tempMax,
    double? tempMin,
  }) = _MainDTO;

  factory MainDTO.fromJson(Map<String, dynamic> json) =>
      _$MainDTOFromJson(json);
}

extension MainMapper on MainDTO {
  MainEntity toEntity() {
    return MainEntity(
        feelsLike: feelsLike,
        grndLevel: grndLevel,
        humidity: humidity,
        pressure: pressure,
        seaLevel: seaLevel,
        temp: temp,
        tempKf: tempKf,
        tempMax: tempMax,
        tempMin: tempMin);
  }
}
