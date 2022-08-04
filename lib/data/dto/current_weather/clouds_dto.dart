import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/clouds_entity.dart';

part 'clouds_dto.freezed.dart';

part 'clouds_dto.g.dart';

@freezed
class CloudsDTO with _$CloudsDTO {
  const factory CloudsDTO({num? all}) = _CloudsDTO;

  factory CloudsDTO.fromJson(Map<String, dynamic> json) =>
      _$CloudsDTOFromJson(json);
}

extension CloudsMapper on CloudsDTO {
  CloudsEntity toEntity() {
    return CloudsEntity(
      all: all,
    );
  }
}
