import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'connected_event.dart';

part 'connected_state.dart';

//bloc для мониторинга состояния сетевого соединения
class ConnectedBloc extends Bloc<ConnectedEvent, ConnectedState> {
  //объект для получения информации о состоянии
  Connectivity connectivity;

  //объект подписки на сообщения потока
  late StreamSubscription? subscription;

  //конструктор с обязательным именованым параметром объекта для получения информации о состоянии
  ConnectedBloc({required this.connectivity}) : super(ConnectedInitialState()) {
    //событие инициализации для получения наччального значения
    on<InitConnectionEvent>((event, emit) async {
      //обращение к объекту connectivity для получения текущего состояния
      final ConnectivityResult connectivityResult =
          await connectivity.checkConnectivity();
      //передача результат в функцию проверки состояния
      checkConnectivityResult(connectivityResult);
    });
    //событие появление соединения выбрасывает состояние успешного соединения
    on<OnConnectedEvent>((event, emit) => emit(ConnectedSuccessState()));
    //событие исчезновения соединения выбрасывает состояние неуспешного соединения
    on<OnNotConnectedEvent>((event, emit) => emit(ConnectedFailureState()));
    //подписка на события изменения состояния подключения устройства
    subscription =
        connectivity.onConnectivityChanged.listen(checkConnectivityResult);
  }

  //функция проверки результата для определения появилось соединение или нет
  //и добавления соответствующего события
  void checkConnectivityResult(ConnectivityResult result) {
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      //если подключился Wi-Fi или мобильный интернет - состояние подсоединения
      add(OnConnectedEvent());
    } else {
      //все остальные события - состояние отсутствия соединения
      add(OnNotConnectedEvent());
    }
  }

  //для высвобождения ресурсов необходимо переопределить метод
  //закрытия блока и в нем же отменять полписку на стрим с событиями о подсоединении
  @override
  Future<void> close() {
    //отмена подписки на стрим с событиями подсоединения
    subscription?.cancel();
    return super.close();
  }
}
