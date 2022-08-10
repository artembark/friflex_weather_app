import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:friflex_weather_app/domain/interfaces/connected_repo.dart';

part 'connected_event.dart';

part 'connected_state.dart';

//bloc для мониторинга состояния сетевого соединения
class ConnectedBloc extends Bloc<ConnectedEvent, ConnectedState> {
  //объект для получения информации о состоянии
  ConnectedRepository connectedRepository;

  //объект подписки на сообщения потока
  late StreamSubscription? subscription;

  //конструктор с обязательным именованым параметром объекта для получения информации о состоянии
  ConnectedBloc({required this.connectedRepository})
      : super(ConnectedInitialState()) {
    //событие появление соединения выбрасывает состояние успешного соединения
    on<OnConnectedEvent>((event, emit) {
      emit(ConnectedSuccessState());
    });
    //событие исчезновения соединения выбрасывает состояние неуспешного соединения
    on<OnNotConnectedEvent>((event, emit) {
      emit(ConnectedFailureState());
    });
    //событие иницализации
    on<InitConnectionEvent>((event, emit) async {
      //эмит состояния инициализации
      emit(ConnectedInitialState());
      //подписка на события изменения состояния подключения устройства
      subscribeToStream();
    });
  }

  //метод для подписки на стрим событиями о состоянии подключения
  StreamSubscription<bool> subscribeToStream() {
    return subscription = connectedRepository
        .getConnectedStream()
        .listen(checkConnectivityResult);
  }

  //метод проверки результата для определения появилось соединение или нет
  //и добавления соответствующего события
  void checkConnectivityResult(bool connected) {
    if (connected) {
      //если подключился интернет - состояние подсоединения
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
    //отмена подписки репозитория на события
    connectedRepository.cancelConnectedSubscription();
    //отмена подписки на стрим с событиями подсоединения от репозитория
    subscription?.cancel();
    return super.close();
  }
}
