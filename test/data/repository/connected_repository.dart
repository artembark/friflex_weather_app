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

  test('Should return [true, false] on [mobile,none]', () {
    when(() => mockConnectivity.onConnectivityChanged).thenAnswer((_) {
      return Stream<ConnectivityResult>.fromIterable(
          [ConnectivityResult.mobile, ConnectivityResult.none]);
    });
    connectedRepository = ConnectedRepoImpl(connectivity: mockConnectivity);

    final Stream<bool> connectedStream =
        connectedRepository.getConnectedStream();

    expect(connectedStream, emitsInOrder(<bool>[true, false]));
  });
}
