import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_weather_app/domain/bloc/current_weather_cubit.dart';

class CurrentWeatherPage extends StatefulWidget {
  const CurrentWeatherPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CurrentWeatherPage> createState() => _CurrentWeatherPageState();
}

class _CurrentWeatherPageState extends State<CurrentWeatherPage> {
  late String cityName;

  @override
  void didChangeDependencies() {
    cityName = ModalRoute.of(context)?.settings.arguments.toString() ?? '';
    context.read<CurrentWeatherCubit>().fetchCurrentWeather(cityName);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: IconButton(
          icon: Text('Выбрать другой', textAlign: TextAlign.center),
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
            constraints: BoxConstraints.expand(width: 80),
            icon: Text('Прогноз', textAlign: TextAlign.center),
            onPressed: () {
              Navigator.pushNamed(context, '/forecast');
            },
          )
        ],
      ),
      body: BlocBuilder<CurrentWeatherCubit, CurrentWeatherState>(
          builder: (context, state) {
        if (state.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.errorMessage?.isNotEmpty == true) {
          return Text(state.errorMessage ?? 'Нет текста ошибки');
        }
        if (state.weatherEntity == null) {
          return Text('Погода null');
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Температура ${state.weatherEntity?.main?.temp}'),
                Text('Влажность ${state.weatherEntity?.main?.humidity}'),
                Text('Скорость ветра ${state.weatherEntity?.wind?.speed}'),
              ],
            ),
          );
        }
      }),
    );
  }
}
