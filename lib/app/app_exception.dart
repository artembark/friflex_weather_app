///исключение для случая, когда введенный город не найден
class CityNotFoundException implements Exception {
  CityNotFoundException([this.message]);
  final String? message;

  @override
  String toString() {
    return 'CityNotFoundException(${message ?? ''})';
  }
}

///исключение для случая не найденно страницы
class PageNotFoundException implements Exception {
  PageNotFoundException([this.message]);
  final String? message;

  @override
  String toString() {
    return 'PageNotFoundException(${message ?? ''})';
  }
}
