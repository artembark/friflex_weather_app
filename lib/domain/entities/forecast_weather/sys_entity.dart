import 'package:equatable/equatable.dart';

class SysEntity extends Equatable {
  final String? pod;

  const SysEntity({required this.pod});

  @override
  List<Object?> get props => [pod];
}
