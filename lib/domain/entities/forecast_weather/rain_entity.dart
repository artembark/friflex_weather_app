import 'package:equatable/equatable.dart';

class RainEntity extends Equatable {
  final double? threeHour;

  const RainEntity({required this.threeHour});

  @override
  List<Object?> get props => [threeHour];
}
