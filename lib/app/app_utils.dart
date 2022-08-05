import 'package:intl/intl.dart';

//утилиты для использования на всех страницах
String formatDateTime(DateTime? dateTime) {
  if (dateTime != null) {
    return DateFormat("dd-MM-yyyy HH:mm").format(dateTime);
  } else {
    return '-';
  }
}
