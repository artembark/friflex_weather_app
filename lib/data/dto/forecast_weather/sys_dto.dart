import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/sys_entity.dart';

part 'sys_dto.freezed.dart';

part 'sys_dto.g.dart';

@freezed
class SysDTO with _$SysDTO {
  const factory SysDTO({String? pod}) = _SysDTO;

  factory SysDTO.fromJson(Map<String, dynamic> json) => _$SysDTOFromJson(json);
}

extension SysMapper on SysDTO {
  SysEntity toEntity() {
    return SysEntity(pod: pod);
  }
}
