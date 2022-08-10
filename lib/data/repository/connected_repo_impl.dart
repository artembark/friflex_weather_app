import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:friflex_weather_app/domain/interfaces/connected_repo.dart';

class ConnectedRepoImpl implements ConnectedRepository {
  //объект для получения информации о состоянии
  late Connectivity connectivity;
  //объект подписки на сообщения потока
  late StreamSubscription? subscription;

  //стрим для добавления событий о стостоянии подключения
  final streamController = StreamController<bool>();

  //конструктор с подпиской на события изменеия состояния подключения
  ConnectedRepoImpl({required this.connectivity}) : super() {
    //выполняется полученеие текущего состяния подключения
    //если этого не сделать, первое событие в стриме появится только
    //при смене состояния, то есть необходимо было бы выключить интернет и включить
    //его снова для того чтобы появился стейт наличия соединения
    getCurrentConnectionState();
    //выполняется подписка на изменение состояния подключения
    subscribeToStream();
  }

  //метод для подписки на стрим с данными о состоянии подключения
  StreamSubscription<ConnectivityResult> subscribeToStream() {
    return subscription =
        connectivity.onConnectivityChanged.listen(checkConnectivityResult);
  }

  //метод возвращающий текущее состояние подключения
  Future<void> getCurrentConnectionState() async {
    checkConnectivityResult(await connectivity.checkConnectivity());
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

  //метод возвращающий поток состояний подключения
  @override
  Stream<bool> getConnectedStream() {
    return streamController.stream;
  }

  //метод для отмены подписки на поток данных о подключении
  @override
  void cancelConnectedSubscription() {
    subscription?.cancel();
  }
}
