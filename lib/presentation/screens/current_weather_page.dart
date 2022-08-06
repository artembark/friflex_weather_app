import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_weather_app/app/app_strings.dart';
import 'package:friflex_weather_app/domain/bloc/app_settings/app_settings_cubit.dart';
import 'package:friflex_weather_app/domain/bloc/current_weather/current_weather_cubit.dart';
import 'package:friflex_weather_app/presentation/widgets/current_weather_card.dart';
import 'package:friflex_weather_app/presentation/widgets/error_page.dart';
import 'package:friflex_weather_app/presentation/widgets/forecast_button.dart';
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
          icon: const Text(AppStrings.labelChooseAnother,
              textAlign: TextAlign.center),
          //вызов навигатора для выбрасывания текущего экрана из стека
          onPressed: () => Navigator.pop(context),
        ),
        //составной заголовок аппбара
        title: Column(
          children: [
            const Text(AppStrings.labelCurrentWeather),
            //для адаптации размера текста
            FittedBox(
              child: Text(
                '${AppStrings.labelForecastFull} $cityName',
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
    if (context.read<ConnectedBloc>().state is ConnectedSuccessState ||
        kIsWeb) {
      //демонстрация уведомления о проблемах с получением данных
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(state.errorMessage ?? AppStrings.errorUnexpected),
        action: SnackBarAction(
          label: AppStrings.backButtonText,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ));
    } else {
      //демонстрация уведомления в случае отсутствия интернета
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text(AppStrings.errorConnection)));
    }
  }
}
