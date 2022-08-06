import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:friflex_weather_app/app/app_exception.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_part_entity.dart';
import 'package:friflex_weather_app/domain/interfaces/forecast_weather_repo.dart';

part 'forecast_weather_state.dart';

class ForecastWeatherCubit extends Cubit<ForecastWeatherState> {
  //репозиторий предоставляющий объект прогноза погоды
  final ForecastWeatherRepository forecastWeatherRepository;

  //конструктор с обязательной передачей зависимостью
  //репозитория предоставляющего объект прогноза погоды
  ForecastWeatherCubit({required this.forecastWeatherRepository})
      : super(const ForecastWeatherState());

  //функция получения объекта прогноза погоды
  Future<void> fetchForecastWeather(String cityName) async {
    emit(const ForecastWeatherState(loading: true));
    //получение данных от репозитория
    //в случае успеха - выбрасывание нового состояние с параметром,
    //сожержащим объект текущей погоды
    //в в случае ошибки - проверка на тип ошибки неверного имени города
    //и формирование соответсвующего текста ошибки
    //если ошибка какая-то другая - текст ошибки устанавливается другим
    //оба случая вырасывают новое состояние с параметром текста ошибки
    await forecastWeatherRepository
        .getForecastWeather(cityName: cityName)
        .then((forecastEntity) {
      //сохранение списка объектов прогноза
      final List<ForecastPartEntity>? forecastPartList = forecastEntity.list;
      //для сортировки используется миксин Comparable на ForecastPartEntity
      //переопределен метод compareTo
      forecastPartList?.sort();
      //эмитирование нового состояние со списком объектов погоды
      emit(ForecastWeatherState(forecastPartList: forecastPartList));
    })
        //обработка ошибка неверно заданного города, определяется по
        //типу кастомного исключения
        .catchError((Object error) {
      emit(const ForecastWeatherState(errorMessage: 'Такой город не найден'));
    }, test: (error) => error is CityNotFoundException)
        //обработка всех остальных ошибок и вывод типа ошибки и стектрейс
        //для облегчения поиска проблемы во время отладки
        .catchError((Object error, StackTrace stackTrace) {
      if (kDebugMode) {
        print(error.toString());
        print(stackTrace);
      }
      emit(const ForecastWeatherState(errorMessage: 'Ошибка получения данных'));
    });
  }
}
