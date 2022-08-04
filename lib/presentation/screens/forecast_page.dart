import 'package:flutter/material.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Прогноз погоды'),
      ),
      body: Center(
        child: Text('Прогноз'),
      ),
    );
  }
}
