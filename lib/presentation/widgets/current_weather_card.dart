import 'package:flutter/material.dart';
import 'package:friflex_weather_app/app/app_strings.dart';
import 'package:friflex_weather_app/app/app_text_styles.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/current_weather_entity.dart';

import '../../app/app_utils.dart';

class CurrentWeatherCard extends StatelessWidget {
  const CurrentWeatherCard({
    Key? key,
    required this.weather,
  }) : super(key: key);

  final CurrentWeatherEntity? weather;

  @override
  Widget build(BuildContext context) {
    //переменная с кодом состояния погоды
    final String condition = weather?.weather?.first.icon ?? '_unknown';
    return Center(
      //адаптивный к размерам экрана контейнер
      child: FractionallySizedBox(
        //процент по ширине
        widthFactor: 0.8,
        //процен по высоте
        heightFactor: 0.6,
        child: Container(
          //добавление скруленной фиолетовой рамки
          decoration: BoxDecoration(
              border: Border.all(color: Colors.purple),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Center(
            child: Column(
              //размещение объектов колонке с равным расстоянием между и половинрй
              //расстояния сверху и снизу
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    //контейнер с закругленной рамкой и изображением
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      //отображение картинки с состоянием погоды
                      child:
                          Image.asset('assets/conditions/cond$condition.png'),
                    ),
                    //текстовое описание состояния погоды
                    Text(
                      weather?.weather?.first.description ?? 'неизвестно',
                      style: AppTextStyle.parametersTextStyle,
                    ),
                  ],
                ),
                //отображение температуры
                Text(
                  '${AppStrings.labelTemperature} ${weather?.main?.temp} °C',
                  style: AppTextStyle.parametersTextStyle,
                ),
                //отображение влажности
                Text(
                  '${AppStrings.labelHumidity} ${weather?.main?.humidity} %',
                  style: AppTextStyle.parametersTextStyle,
                ),
                //отображение скорости ветра
                Text(
                  '${AppStrings.labelWindSpeed} ${weather?.wind?.speed} ${AppStrings.labelWindUnits}',
                  style: AppTextStyle.parametersTextStyle,
                ),
                //отображение времени актуальности данных погоды
                Text(
                  '${AppStrings.labelActualForecast} ${formatDateTime(weather?.dt)}',
                  style: AppTextStyle.parametersTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
