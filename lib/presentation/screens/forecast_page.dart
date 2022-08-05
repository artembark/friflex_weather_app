import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_weather_app/domain/bloc/forecast_weather/forecast_weather_cubit.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_part_entity.dart';
import 'package:friflex_weather_app/presentation/widgets/error_page.dart';
import 'package:friflex_weather_app/presentation/widgets/weather_progress_indicator.dart';

import '../../domain/bloc/app_settings/app_settings_cubit.dart';

class ForecastPage extends StatefulWidget {
  const ForecastPage({Key? key}) : super(key: key);

  @override
  State<ForecastPage> createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> {
  //переменная для хранения значения выбранного города
  late String cityName;

  //метод вызываемый после initState
  //на этом моменте уже есть доступ к контексту
  @override
  void didChangeDependencies() {
    //получение названия города из кубита настроек приложения
    cityName = context.read<AppSettingsCubit>().getCityName();
    //вызов функции кубита прогноза погоды для получения объекта прогноза погоды
    context.read<ForecastWeatherCubit>().fetchForecastWeather(cityName);
    //вызов метода суперкласса
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text('Прогноз погоды'),
            FittedBox(
              child: Text(
                'Город $cityName',
              ),
            ),
          ],
        ),
        //кнопка для обновления прогноза
        actions: [
          IconButton(
            constraints: const BoxConstraints.expand(width: 90),
            icon: const Text('Обновить', textAlign: TextAlign.center),
            //обращение к кубиту прогноза погоды с вызовом функции
            // получения объекта прогноза погоды
            onPressed: () => context
                .read<ForecastWeatherCubit>()
                .fetchForecastWeather(cityName),
          )
        ],
      ),
      body: Center(
        //BlocBuilder для отображения реакции на изменения стейта кубита
        child: BlocBuilder<ForecastWeatherCubit, ForecastWeatherState>(
            builder: (context, state) {
          //состояние загрузки
          if (state.loading) {
            return const WeatherProgressIndicator();
          }
          //состояние наличия ошибки
          if (state.errorMessage?.isNotEmpty == true) {
            return ErrorPage(errorMessage: state.errorMessage);
          }
          //проверка полученного списка прогнозов на null
          if (state.forecastPartList != null) {
            {
              //список карточек с прогнозом погоды на период
              return ForecastCardList(
                forecastParts: state.forecastPartList,
              );
            }
          }
          return const WeatherProgressIndicator();
        }),
      ),
    );
  }
}

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
            forecastTime: item?.dtTxt ?? '-',
          );
        });
  }
}

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
                Text('Температура $temp °C'),
                Text('Влажность $humidity %'),
                Text('Скорость ветра $windSpeed м/с'),
                Text(
                  'Прогноз актуален на $forecastTime',
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
