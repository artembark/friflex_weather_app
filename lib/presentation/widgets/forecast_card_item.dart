import 'package:flutter/material.dart';
import 'package:friflex_weather_app/app/app_strings.dart';

class ForecastCardItem extends StatelessWidget {
  const ForecastCardItem({
    Key? key,
    required this.conditionIcon,
    required this.temp,
    required this.humidity,
    required this.windSpeed,
    required this.forecastTime,
  }) : super(key: key);

  //иконка погоды
  final String conditionIcon;

  //температура
  final String temp;

  //влажность
  final String humidity;

  //скорость ветра
  final String windSpeed;

  //время прогноза
  final String forecastTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          //загрузка картинки по коду
          Image.asset('assets/conditions/cond$conditionIcon.png'),
          //колнка занимает все оставшееся место
          Expanded(
            child: Column(
              children: [
                Text('${AppStrings.labelTemperature} $temp °C'),
                Text('${AppStrings.labelHumidity} $humidity %'),
                Text(
                    '${AppStrings.labelWindSpeed} $windSpeed ${AppStrings.labelWindUnits}'),
                Text(
                  '${AppStrings.labelActualForecast} $forecastTime',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
