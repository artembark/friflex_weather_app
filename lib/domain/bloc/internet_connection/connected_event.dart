part of 'connected_bloc.dart';

//события bloc
abstract class ConnectedEvent {}

//событие инициализации
class InitConnectionEvent extends ConnectedEvent {}

//событие подсоединения
class OnConnectedEvent extends ConnectedEvent {}

//событие отсоединения
class OnNotConnectedEvent extends ConnectedEvent {}
