import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:friflex_weather_app/domain/interfaces/connected_repo.dart';

class ConnectedRepoImpl implements ConnectedRepository {
  //объект для получения информации о состоянии
  late Connectivity connectivity;
  //объект подписки на сообщения потока
  late StreamSubscription? subscription;

  //broadcast иначе ошибка при вызове listen после однократного получения состояния
  final streamController = StreamController<bool>.broadcast();

  ConnectedRepoImpl({required this.connectivity}) : super() {
    subscription =
        connectivity.onConnectivityChanged.listen(checkConnectivityResult);
  }

  //функция проверки результата для определения появилось соединение или нет
  //и добавления соответствующего события
  void checkConnectivityResult(ConnectivityResult result) {
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      //если подключился Wi-Fi или мобильный интернет - состояние подсоединения
      streamController.sink.add(true);
    } else {
      //все остальные события - состояние отсутствия соединения
      streamController.sink.add(false);
    }
  }

  @override
  Stream<bool> getConnectedStream() {
    return streamController.stream;
  }

  @override
  Future<bool> isConnected() async {
    checkConnectivityResult(await connectivity.checkConnectivity());
    return streamController.stream.first;
  }
}
