import 'package:flutter/material.dart';

//Виджет индикатора прогресса с цветом и позицией
//используя во всем приложении можно заменить на любой свой и не искать
class WeatherProgressIndicator extends StatelessWidget {
  const WeatherProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.purple,
      ),
    );
  }
}
