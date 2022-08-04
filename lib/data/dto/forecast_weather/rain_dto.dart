import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/rain_entity.dart';

part 'rain_dto.freezed.dart';

part 'rain_dto.g.dart';

@freezed
class RainDTO with _$RainDTO {
  const factory RainDTO({@JsonKey(name: '3h') double? threeHour}) = _RainDTO;

  factory RainDTO.fromJson(Map<String, dynamic> json) =>
      _$RainDTOFromJson(json);
}

extension RainMapper on RainDTO {
  RainEntity toEntity() {
    return RainEntity(threeHour: threeHour);
  }
}
