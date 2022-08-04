import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/main_entity.dart';

part 'main_dto.freezed.dart';

part 'main_dto.g.dart';

@freezed
class MainDTO with _$MainDTO {
  const factory MainDTO({
    num? temp,
    num? feelsLike,
    num? tempMin,
    num? tempMax,
    num? pressure,
    num? humidity,
  }) = _MainDTO;

  factory MainDTO.fromJson(Map<String, dynamic> json) =>
      _$MainDTOFromJson(json);
}

extension MainMapper on MainDTO {
  MainEntity toEntity() {
    return MainEntity(
        temp: temp,
        feelsLike: feelsLike,
        tempMin: tempMin,
        tempMax: tempMax,
        pressure: pressure,
        humidity: humidity);
  }
}
