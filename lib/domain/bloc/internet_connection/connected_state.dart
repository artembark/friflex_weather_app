part of 'connected_bloc.dart';

//состояния bloc
abstract class ConnectedState {}

//начадьное состояние
class ConnectedInitialState extends ConnectedState {}

//состояние успешного подсоединения
class ConnectedSuccessState extends ConnectedState {}

//состояние неуспешного подсоединения
class ConnectedFailureState extends ConnectedState {}
