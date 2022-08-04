import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/coord_entity.dart';

part 'coord_dto.freezed.dart';

part 'coord_dto.g.dart';

@freezed
class CoordDTO with _$CoordDTO {
  const factory CoordDTO({
    num? lon,
    num? lat,
  }) = _CoordDto;

  factory CoordDTO.fromJson(Map<String, dynamic> json) =>
      _$CoordDTOFromJson(json);
}

extension CoordMapper on CoordDTO {
  CoordEntity toEntity() {
    return CoordEntity(
      lon: lon,
      lat: lat,
    );
  }
}
