import 'package:equatable/equatable.dart';

class SysEntity extends Equatable {
  final num? type;
  final num? id;
  final String? country;
  final num? sunrise;
  final num? sunset;

  const SysEntity({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  @override
  List<Object?> get props => [type, id, country, sunrise, sunset];
}
