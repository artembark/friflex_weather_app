part of 'connected_bloc.dart';

//состояния bloc
abstract class ConnectedState extends Equatable {
  @override
  List<Object?> get props => [];
}

//начадьное состояние
class ConnectedInitialState extends ConnectedState {}

//состояние успешного подсоединения
class ConnectedSuccessState extends ConnectedState {}

//состояние неуспешного подсоединения
class ConnectedFailureState extends ConnectedState {}
