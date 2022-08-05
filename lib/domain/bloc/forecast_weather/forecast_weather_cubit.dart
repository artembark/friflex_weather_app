import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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
      : super(ForecastWeatherState());

  //функция получения объекта прогноза погоды
  Future<void> fetchForecastWeather(String cityName) async {
    emit(ForecastWeatherState(loading: true));
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
    }).catchError((error) {
      emit(ForecastWeatherState(errorMessage: 'Такой город не найден'));
    }, test: (error) => error is CityNotFoundException).catchError((error) {
      emit(ForecastWeatherState(errorMessage: 'Ошибка получения данных'));
    });
  }
}
