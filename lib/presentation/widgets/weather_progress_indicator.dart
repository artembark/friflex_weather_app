import 'package:flutter/material.dart';

//Виджет индикатора прогресса с цветом и позицией
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
