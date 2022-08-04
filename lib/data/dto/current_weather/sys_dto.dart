import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/sys_entity.dart';

part 'sys_dto.freezed.dart';

part 'sys_dto.g.dart';

@freezed
class SysDTO with _$SysDTO {
  const factory SysDTO({
    num? type,
    num? id,
    String? country,
    num? sunrise,
    num? sunset,
  }) = _SysDTO;

  factory SysDTO.fromJson(Map<String, dynamic> json) => _$SysDTOFromJson(json);
}

extension SysMapper on SysDTO {
  SysEntity toEntity() {
    return SysEntity(
      type: type,
      id: id,
      country: country,
      sunrise: DateTime.fromMillisecondsSinceEpoch(sunrise?.toInt() ?? 0),
      sunset: DateTime.fromMillisecondsSinceEpoch(sunset?.toInt() ?? 0),
    );
  }
}
