import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_weather_app/app/app_strings.dart';
import 'package:friflex_weather_app/domain/bloc/forecast_weather/forecast_weather_cubit.dart';
import 'package:friflex_weather_app/presentation/widgets/error_page.dart';
import 'package:friflex_weather_app/presentation/widgets/forecast_card_list.dart';
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
        leadingWidth: 80,
        leading: IconButton(
          icon: const Text(AppStrings.backButtonText,
              textAlign: TextAlign.center),
          //вызов навигатора для выбрасывания текущего экрана из стека
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          children: [
            const Text(AppStrings.labelCity),
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
            icon: const Text(AppStrings.refreshButtonText,
                textAlign: TextAlign.center),
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
