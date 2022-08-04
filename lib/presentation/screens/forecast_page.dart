import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_weather_app/domain/bloc/forecast_weather/forecast_weather_cubit.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_part_entity.dart';

import '../../domain/bloc/app_settings/app_settings_cubit.dart';

class ForecastPage extends StatefulWidget {
  const ForecastPage({Key? key}) : super(key: key);

  @override
  State<ForecastPage> createState() => _ForecastPageState();
}

class _ForecastPageState extends State<ForecastPage> {
  late String cityName;

  @override
  void didChangeDependencies() {
    cityName = context.read<AppSettingsCubit>().getCityName();
    context.read<ForecastWeatherCubit>().fetchForecastWeather(cityName);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Прогноз погоды в городе $cityName',
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            constraints: const BoxConstraints.expand(width: 90),
            icon: const Text('Обновить', textAlign: TextAlign.center),
            onPressed: () {
              context
                  .read<ForecastWeatherCubit>()
                  .fetchForecastWeather(cityName);
            },
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<ForecastWeatherCubit, ForecastWeatherState>(
            builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          // if (state.errorMessage?.isNotEmpty != true) {
          //   return Text(state.errorMessage.toString());
          // }
          if (state.forecastPartList == null) {
            return const Text('Прогноз null');
          } else {
            final List<ForecastPartEntity>? forecastParts =
                state.forecastPartList;
            return ListView.separated(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                itemCount: forecastParts?.length ?? 0,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: (context, index) {
                  final String conditionIcon = state.forecastPartList
                          ?.elementAt(index)
                          .weather
                          ?.first
                          .icon ??
                      '_unknown';
                  final String temp =
                      forecastParts?.elementAt(index).main?.temp.toString() ??
                          '-';
                  final String humidity = forecastParts
                          ?.elementAt(index)
                          .main
                          ?.humidity
                          .toString() ??
                      '-';
                  final String windSpeed =
                      forecastParts?.elementAt(index).wind?.speed.toString() ??
                          '-';
                  final String forecastTime =
                      forecastParts?.elementAt(index).dtTxt ?? '-';
                  return Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: [
                        Image.asset('assets/conditions/cond$conditionIcon.png'),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Температура $temp°C'),
                              Text('Влажность $humidity%'),
                              Text('Скорость ветра $windSpeedм/с'),
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
                });
          }
        }),
      ),
    );
  }
}
