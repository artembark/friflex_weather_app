import 'package:flutter/material.dart';

///Виджет сообщения об ошибке
class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  //параметр стекста сообщения об ошибке
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      //размещение по центру колонки
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          //отображение текста ошибки с проверкой
          errorMessage ?? 'Неожиданная ошибка',
          //расположение текста по центру
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
          //кнопка вызова навигатора и удаления текущего маршрута из стека
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Назад'),
        )
      ],
    ));
  }
}
