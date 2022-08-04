import 'package:equatable/equatable.dart';

class CoordEntity extends Equatable {
  final num? lon;
  final num? lat;

  const CoordEntity({
    required this.lon,
    required this.lat,
  });

  @override
  List<Object?> get props => [lon, lat];
}
