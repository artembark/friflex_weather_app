//кнопка для открытия страницы с прогнозом
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_weather_app/app/app_const.dart';
import 'package:friflex_weather_app/app/app_strings.dart';
import 'package:friflex_weather_app/domain/bloc/internet_connection/connected_bloc.dart';

class ForecastButton extends StatelessWidget {
  const ForecastButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: const BoxConstraints.expand(width: 80),
      icon: const Text(AppStrings.labelForecastShort,
          textAlign: TextAlign.center),
      onPressed: () => navigateToForecast(context),
    );
  }

  //проверка текущего соединения и демонстрауия уведомления
  void navigateToForecast(BuildContext context) {
    //проверка состояния интернет-соединения
    if (context.read<ConnectedBloc>().state is ConnectedSuccessState) {
      //переход на страницу с прогнозом погоды
      Navigator.pushNamed(context, AppConst.forecastWeatherRoute);
    } else {
      //демонстрация уведомления в случае отсутствия интернета
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(AppStrings.errorConnection),
        ),
      );
    }
  }
}
