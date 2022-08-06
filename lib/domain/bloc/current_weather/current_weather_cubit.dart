import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:friflex_weather_app/app/app_exception.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/current_weather_entity.dart';
import 'package:friflex_weather_app/domain/interfaces/current_weather_repo.dart';

part 'current_weather_state.dart';

class CurrentWeatherCubit extends Cubit<CurrentWeatherState> {
  //объект для доступа к репозиторию текущей погоды
  final CurrentWeatherRepository currentWeatherRepository;

  //конструктор с обязательным именованым параметром объекта доступа к репозиторию
  CurrentWeatherCubit({
    required this.currentWeatherRepository,
  }) : super(const CurrentWeatherState());

  //функция получения текущей погоды и обработки ошибок
  Future<void> fetchCurrentWeather(String cityName) async {
    //после начала загрузки данных изменяется параметр loading
    //и выбрасывается новое состояние с измененным параметром
    emit(const CurrentWeatherState(loading: true));
    //получение данных от репозитория
    //в случае успеха - выбрасывание нового состояние с параметром
    //сожержащим объект текущей погоды
    //в в случае ошибки - проверка на тип ошибки неверного имени города
    //и формирование соответсвующего текста ошибки
    //если ошибка какая-то другая - текст ошибки устанавливается другим
    //оба случая вырасывают новое состояние с параметром текста ошибки
    await currentWeatherRepository
        .getCurrentWeather(cityName: cityName)
        .then((weatherEntity) =>
            emit(CurrentWeatherState(weatherEntity: weatherEntity)))
        //обработка ошибка неверно заданного города, определяется по
        //типу кастомного исключения
        .catchError((Object error) {
      emit(const CurrentWeatherState(errorMessage: 'Такой город не найден'));
    }, test: (error) => error is CityNotFoundException).
        //обработка всех остальных ошибок и вывод типа ошибки и стектрейс
        //для облегчения поиска проблемы во время отладки
        catchError((Object error, StackTrace stackTrace) {
      if (kDebugMode) {
        print(error.toString());
        print(stackTrace);
      }
      emit(const CurrentWeatherState(errorMessage: 'Ошибка получения данных'));
    });
  }
}
