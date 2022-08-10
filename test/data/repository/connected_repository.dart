import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/data/repository/connected_repo_impl.dart';
import 'package:friflex_weather_app/domain/interfaces/connected_repo.dart';
import 'package:mocktail/mocktail.dart';

class MockConnectivity extends Mock implements Connectivity {}

void main() {
  late MockConnectivity mockConnectivity;
  late ConnectedRepository connectedRepository;

  setUp(() {
    //инициализируем мок connectivity
    mockConnectivity = MockConnectivity();
    // если тестов несколько, этот блок перенести в test
    // //описываем какие состояния выдавать при обращении
    // when(() => mockConnectivity.onConnectivityChanged).thenAnswer((_) {
    //   return Stream<ConnectivityResult>.fromIterable(
    //       [ConnectivityResult.mobile, ConnectivityResult.none]);
    // });
    // //тут нельзя инициализировать репозиторий т.к. при инциализации
    // //будет произведена подписка на еще незамоканный стрим с состояниями
    // //поэтому необходимо добавить when выше, но тогда это будет настройка
    // //на все тесты, чтобы иметь возможность насраивать каждый перенесем все
    // // в блок test
    // connectedRepository = ConnectedRepoImpl(connectivity: mockConnectivity);
  });

  test('Should return [true] on [mobile] event (startup)', () {
    //настройка ответа на текущее состояние
    when(() => mockConnectivity.checkConnectivity()).thenAnswer(
        (_) => Future<ConnectivityResult>.value(ConnectivityResult.mobile));
    //настройка ответа на стрим
    when(() => mockConnectivity.onConnectivityChanged).thenAnswer((_) {
      return Stream<ConnectivityResult>.fromIterable([]);
    });
    //инициализация репозитория
    connectedRepository = ConnectedRepoImpl(connectivity: mockConnectivity);

    //получение данных от репозитория
    final Stream<bool> connectedStream =
        connectedRepository.getConnectedStream();

    //проверка порядка полученных событий из стрима
    expectLater(connectedStream, emitsInOrder(<bool>[true]));
  });

  test('Should return [false] on [none] event (startup)', () {
    //настройка ответа на текущее состояние
    when(() => mockConnectivity.checkConnectivity()).thenAnswer(
        (_) => Future<ConnectivityResult>.value(ConnectivityResult.none));
    //настройка ответа на стрим
    when(() => mockConnectivity.onConnectivityChanged).thenAnswer((_) {
      return Stream<ConnectivityResult>.fromIterable([]);
    });
    //инициализация репозитория
    connectedRepository = ConnectedRepoImpl(connectivity: mockConnectivity);

    //получение данных от репозитория
    final Stream<bool> connectedStream =
        connectedRepository.getConnectedStream();

    //проверка порядка полученных событий из стрима
    expectLater(connectedStream, emitsInOrder(<bool>[false]));
  });

  test('Should return [true, false] on [mobile,none] events', () {
    //настройка ответа на текущее состояние
    when(() => mockConnectivity.checkConnectivity()).thenAnswer(
        (_) => Future<ConnectivityResult>.value(ConnectivityResult.mobile));
    //настройка ответа на стрим
    when(() => mockConnectivity.onConnectivityChanged).thenAnswer((_) {
      return Stream<ConnectivityResult>.fromIterable([ConnectivityResult.none]);
    });
    //инициализация репозитория
    connectedRepository = ConnectedRepoImpl(connectivity: mockConnectivity);

    //получение данных от репозитория
    final Stream<bool> connectedStream =
        connectedRepository.getConnectedStream();

    //проверка порядка полученных событий из стрима
    expectLater(connectedStream, emitsInOrder(<bool>[true, false]));
  });

  test('Should return [true, false] on [wifi,none] events', () {
    //настройка ответа на текущее состояние
    when(() => mockConnectivity.checkConnectivity()).thenAnswer(
        (_) => Future<ConnectivityResult>.value(ConnectivityResult.wifi));
    //настройка ответа на стрим
    when(() => mockConnectivity.onConnectivityChanged).thenAnswer((_) {
      return Stream<ConnectivityResult>.fromIterable([ConnectivityResult.none]);
    });
    //инициализация репозитория
    connectedRepository = ConnectedRepoImpl(connectivity: mockConnectivity);

    //получение данных от репозитория
    final Stream<bool> connectedStream =
        connectedRepository.getConnectedStream();

    //проверка порядка полученных событий из стрима
    expectLater(connectedStream, emitsInOrder(<bool>[true, false]));
  });

  test('Should return [false, true] on [none,wifi] events', () {
    //настройка ответа на текущее состояние
    when(() => mockConnectivity.checkConnectivity()).thenAnswer(
        (_) => Future<ConnectivityResult>.value(ConnectivityResult.none));
    //настройка ответа на стрим
    when(() => mockConnectivity.onConnectivityChanged).thenAnswer((_) {
      return Stream<ConnectivityResult>.fromIterable([ConnectivityResult.wifi]);
    });
    //инициализация репозитория
    connectedRepository = ConnectedRepoImpl(connectivity: mockConnectivity);

    //получение данных от репозитория
    final Stream<bool> connectedStream =
        connectedRepository.getConnectedStream();

    //проверка порядка полученных событий из стрима
    expectLater(connectedStream, emitsInOrder(<bool>[false, true]));
  });
}
