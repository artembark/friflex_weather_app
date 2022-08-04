import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_weather_app/app/app_const.dart';
import 'package:friflex_weather_app/domain/bloc/app_settings/app_settings_cubit.dart';
import 'package:friflex_weather_app/domain/bloc/current_weather/current_weather_cubit.dart';

class CurrentWeatherPage extends StatefulWidget {
  const CurrentWeatherPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CurrentWeatherPage> createState() => _CurrentWeatherPageState();
}

class _CurrentWeatherPageState extends State<CurrentWeatherPage> {
  //объявление переменной для хранения названия города
  late String cityName;

  @override
  void didChangeDependencies() {
    //получение сохраненного значения названия города
    cityName = context.read<AppSettingsCubit>().getCityName();
    //
    context.read<CurrentWeatherCubit>().fetchCurrentWeather(cityName);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: IconButton(
          icon: const Text('Выбрать другой', textAlign: TextAlign.center),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Текущая погода в городе $cityName',
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            constraints: const BoxConstraints.expand(width: 80),
            icon: const Text('Прогноз', textAlign: TextAlign.center),
            onPressed: () {
              Navigator.pushNamed(context, AppConst.forecastWeatherRoute);
            },
          )
        ],
      ),
      body: BlocBuilder<CurrentWeatherCubit, CurrentWeatherState>(
          builder: (context, state) {
        if (state.loading) {
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.purple,
          ));
        }
        if (state.errorMessage?.isNotEmpty == true) {
          return Text(state.errorMessage ?? 'Нет текста ошибки');
        }
        if (state.weatherEntity == null) {
          return const Text('Ошибка получения данных');
        } else {
          final String condition =
              state.weatherEntity?.weather?.first.icon ?? '_unknown';
          return Center(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              heightFactor: 0.6,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.purple),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Image.asset(
                                  'assets/conditions/cond$condition.png')),
                          Text(
                            state.weatherEntity?.weather?.first.description ??
                                'неизвестно',
                            style: const TextStyle(fontSize: 24.0),
                          ),
                        ],
                      ),
                      Text(
                        'Температура: ${state.weatherEntity?.main?.temp}°C',
                        style: const TextStyle(fontSize: 24.0),
                      ),
                      Text(
                        'Влажность: ${state.weatherEntity?.main?.humidity}%',
                        style: const TextStyle(fontSize: 24.0),
                      ),
                      Text(
                        'Скорость ветра: ${state.weatherEntity?.wind?.speed}м/с',
                        style: const TextStyle(fontSize: 24.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      }),
    );
  }
}
