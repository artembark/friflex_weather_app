import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_weather_app/app/app_const.dart';
import 'package:friflex_weather_app/app/app_text_styles.dart';
import 'package:friflex_weather_app/domain/bloc/app_settings/app_settings_cubit.dart';
import 'package:friflex_weather_app/domain/bloc/current_weather/current_weather_cubit.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/current_weather_entity.dart';
import 'package:friflex_weather_app/presentation/widgets/error_page.dart';
import 'package:friflex_weather_app/presentation/widgets/weather_progress_indicator.dart';

import '../../domain/bloc/internet_connection/connected_bloc.dart';

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

  //метод вызываемый после initState
  //на этом моменте уже есть доступ к контексту
  @override
  void didChangeDependencies() {
    //получение доступа к bloc получения информации о соединении и
    //добавление события инициализации
    context.read<ConnectedBloc>().add(InitConnectionEvent());
    //получение названия города из кубита настроек приложения
    cityName = context.read<AppSettingsCubit>().getCityName();
    //вызов функции кубита текущей погодв для получения объекта текущей погоды
    context.read<CurrentWeatherCubit>().fetchCurrentWeather(cityName);
    //вызов метода суперкласса
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        //кнопка возврата к экрану выбора названия города
        leading: IconButton(
          icon: const Text('Выбрать другой', textAlign: TextAlign.center),
          //вызов навигатора для выбрасывания текущего экрана из стека
          onPressed: () => Navigator.pop(context),
        ),
        //составной заголовок аппбара
        title: Column(
          children: [
            const Text('Текущая погода'),
            //для адаптации размера текста
            FittedBox(
              child: Text(
                'Город $cityName',
              ),
            ),
          ],
        ),
        actions: const [
          //кнопка на аппбаре для открытия прогноза погоды
          ForecastButton()
        ],
      ),
      body: BlocConsumer<CurrentWeatherCubit, CurrentWeatherState>(
          //прослушивание для показа сообщение об ошибке при изменении состояния
          listener: showSnackBar,
          listenWhen: (prevState, currentState) {
            //прослушивание толко когда в предудущем состоянии не было сообщения об ошибке
            //а в новом состоянии есть
            return currentState.errorMessage != null &&
                prevState.errorMessage == null;
          },
          builder: (context, state) {
            if (state.loading) {
              return const WeatherProgressIndicator();
            }
            //проверка есть ли сообщение об ошибке
            if (state.errorMessage?.isNotEmpty == true) {
              return ErrorPage(errorMessage: state.errorMessage);
            }
            //дополнительная проверка если полученный объект не null
            if (state.weatherEntity != null) {
              //отображение карточки с текущей погодой, передается объект погоды
              return CurrentWeatherCard(weather: state.weatherEntity);
            }
            return const WeatherProgressIndicator();
          }),
    );
  }

  //показ уведомлений о соединении и ошибке соединения
  void showSnackBar(BuildContext context, CurrentWeatherState state) {
    if (context.read<ConnectedBloc>().state is ConnectedSuccessState) {
      //демонстрация уведомления о проблемах с получением данных
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(state.errorMessage ?? 'Неожиданная ошибка'),
        action: SnackBarAction(
          label: 'Назад',
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ));
    } else {
      //демонстрация уведомления в случае отсутствия интернета
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Ошибка. Проверьте доступ к сети интернет.')));
    }
  }
}

//кнопка для открытия страницы с прогнозом
class ForecastButton extends StatelessWidget {
  const ForecastButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: const BoxConstraints.expand(width: 80),
      icon: const Text('Прогноз', textAlign: TextAlign.center),
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
          content: Text(
            'Ошибка. Проверьте доступ к сети интернет.',
          ),
        ),
      );
    }
  }
}

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
                                const BorderRadius.all(Radius.circular(20))),
                        //отображение картинки с состоянием погоды
                        child: Image.asset(
                            'assets/conditions/cond$condition.png')),
                    //текстовое описание состояния погоды
                    Text(
                      weather?.weather?.first.description ?? 'неизвестно',
                      style: AppTextStyle.parametersTextStyle,
                    ),
                  ],
                ),
                //отображение температуры
                Text(
                  'Температура: ${weather?.main?.temp} °C',
                  style: AppTextStyle.parametersTextStyle,
                ),
                //отображение влажности
                Text(
                  'Влажность: ${weather?.main?.humidity} %',
                  style: AppTextStyle.parametersTextStyle,
                ),
                //отображение скорости ветра
                Text(
                  'Скорость ветра: ${weather?.wind?.speed} м/с',
                  style: AppTextStyle.parametersTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
