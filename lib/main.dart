import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_weather_app/app/app_bloc_observer.dart';
import 'package:friflex_weather_app/app/app_const.dart';
import 'package:friflex_weather_app/app/app_theme.dart';
import 'package:friflex_weather_app/di.dart';
import 'package:friflex_weather_app/domain/bloc/app_settings/app_settings_cubit.dart';
import 'package:friflex_weather_app/domain/bloc/current_weather/current_weather_cubit.dart';
import 'package:friflex_weather_app/domain/bloc/forecast_weather/forecast_weather_cubit.dart';
import 'package:friflex_weather_app/domain/bloc/internet_connection/connected_bloc.dart';
import 'package:friflex_weather_app/presentation/screens/city_input_page.dart';
import 'package:friflex_weather_app/presentation/screens/current_weather_page.dart';
import 'package:friflex_weather_app/presentation/screens/forecast_page.dart';

void main() async {
  //инициализация биндингов
  WidgetsFlutterBinding.ensureInitialized();

  //инициализация зависимостей
  await initializeDependencies();

  //блокировка отображения в горизонтальном режиме
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  //запуск приложения и передача стартовой страницы параметорм
  BlocOverrides.runZoned(
      () => runApp(
            const FriflexWeatherApp(),
          ),
      //для логгирования событий bloc
      blocObserver: AppBlocObserver());
}

class FriflexWeatherApp extends StatelessWidget {
  const FriflexWeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        //мультипровайдер для пробрасывания bloc и cubit по дереву
        providers: [
          BlocProvider(create: (_) => locator.get<CurrentWeatherCubit>()),
          BlocProvider(create: (_) => locator.get<ForecastWeatherCubit>()),
          BlocProvider(
              lazy: false,
              create: (_) =>
                  locator.get<ConnectedBloc>()..add(InitConnectionEvent())),
          BlocProvider(
              create: (_) => locator.get<AppSettingsCubit>()..getCityName()),
        ],
        child: BlocBuilder<AppSettingsCubit, AppSettingsState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: AppConst.appName,
              theme: AppTheme.lightTheme,
              //установка initialRoute, полученного из AppSettingsCubit
              initialRoute: (state.cityName == '')
                  ? AppConst.initialRoute
                  : AppConst.currentWeatherRoute,
              //именованные маршруты для навигации
              routes: {
                AppConst.initialRoute: (context) => const CityInputPage(),
                AppConst.currentWeatherRoute: (context) =>
                    const CurrentWeatherPage(),
                AppConst.forecastWeatherRoute: (context) => const ForecastPage()
              },
            );
          },
        ));
  }
}
