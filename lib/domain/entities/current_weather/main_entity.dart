import 'package:equatable/equatable.dart';

class MainEntity extends Equatable {
  final num? temp;
  final num? feelsLike;
  final num? tempMin;
  final num? tempMax;
  final num? pressure;
  final num? humidity;

  const MainEntity({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  @override
  List<Object?> get props =>
      [temp, feelsLike, tempMin, tempMax, pressure, humidity];
}
