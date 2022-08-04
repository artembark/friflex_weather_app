part of 'connected_bloc.dart';

abstract class ConnectedState {}

class ConnectedInitialState extends ConnectedState {}

class ConnectedSuccessState extends ConnectedState {}

class ConnectedFailureState extends ConnectedState {}
