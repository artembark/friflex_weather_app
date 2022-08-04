import 'package:equatable/equatable.dart';

class MainEntity extends Equatable {
  final double? feelsLike;
  final int? grndLevel;
  final int? humidity;
  final int? pressure;
  final int? seaLevel;
  final double? temp;
  final double? tempKf;
  final double? tempMax;
  final double? tempMin;

  const MainEntity({
    required this.feelsLike,
    required this.grndLevel,
    required this.humidity,
    required this.pressure,
    required this.seaLevel,
    required this.temp,
    required this.tempKf,
    required this.tempMax,
    required this.tempMin,
  });

  @override
  List<Object?> get props => [
        feelsLike,
        grndLevel,
        humidity,
        pressure,
        seaLevel,
        temp,
        tempKf,
        tempMax,
        tempMin
      ];
}
