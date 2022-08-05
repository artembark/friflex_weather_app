import 'package:flutter/material.dart';
import 'package:friflex_weather_app/app/app_utils.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_part_entity.dart';
import 'package:friflex_weather_app/presentation/widgets/forecast_card_item.dart';

class ForecastCardList extends StatelessWidget {
  const ForecastCardList({Key? key, required this.forecastParts})
      : super(key: key);
  final List<ForecastPartEntity>? forecastParts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        //отступы
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        //общее количество
        itemCount: forecastParts?.length ?? 0,
        //разделение между элементами списка
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemBuilder: (context, index) {
          //сохранение элемента списка
          final item = forecastParts?.elementAt(index);
          //построение карточки с прогнозом погоды
          return ForecastCardItem(
            //иконка погоды
            conditionIcon: item?.weather?.first.icon ?? '_unknown',
            //температура
            temp: item?.main?.temp.toString() ?? '-',
            //влажность
            humidity: item?.main?.humidity.toString() ?? '-',
            //скорость ветра
            windSpeed: item?.wind?.speed.toString() ?? '-',
            //время прогноза
            forecastTime: formatDateTime(item?.dt),
          );
        });
  }
}
