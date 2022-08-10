///Интерфейс для получения состояния интернет-соединения
abstract class ConnectedRepository {
  ConnectedRepository._();

  ///необходимо переопределить этот метод для получения потока с состояниями
  Stream<bool> getConnectedStream();
  //метод для отмены подписки на поток
  void cancelConnectedSubscription();
}
