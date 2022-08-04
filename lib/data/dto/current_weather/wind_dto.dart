import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/wind_entity.dart';

part 'wind_dto.freezed.dart';

part 'wind_dto.g.dart';

@freezed
class WindDTO with _$WindDTO {
  const factory WindDTO({
    num? speed,
    num? deg,
    num? gust,
  }) = _WindDTO;

  factory WindDTO.fromJson(Map<String, dynamic> json) =>
      _$WindDTOFromJson(json);
}

extension WindMapper on WindDTO {
  WindEntity toEntity() {
    return WindEntity(
      speed: speed,
      deg: deg,
      gust: gust,
    );
  }
}
