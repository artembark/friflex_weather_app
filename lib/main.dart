import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_weather_app/di.dart';
import 'package:friflex_weather_app/domain/bloc/current_weather_cubit.dart';
import 'package:friflex_weather_app/presentation/screens/city_input_page.dart';
import 'package:friflex_weather_app/presentation/screens/current_weather_page.dart';
import 'package:friflex_weather_app/presentation/screens/forecast_page.dart';

void main() async {
  //инициализация биндингов
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //инициализация зависимостей
  await initializeDependencies();
  runApp(const FriflexWeatherApp());
}

class FriflexWeatherApp extends StatelessWidget {
  const FriflexWeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => locator.get<CurrentWeatherCubit>())
      ],
      child: MaterialApp(
        title: 'Friflex Weather App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const CityInputPage(),
          '/current': (context) => const CurrentWeatherPage(),
          '/forecast': (context) => const ForecastPage()
        },
      ),
    );
  }
}
