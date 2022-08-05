import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:friflex_weather_app/data/dto/current_weather/current_weather_dto.dart';
import 'package:friflex_weather_app/domain/entities/current_weather/current_weather_entity.dart';
import 'package:friflex_weather_app/domain/interfaces/current_weather_repo.dart';

///Реализация репозитория получения данных о текущей погоде
class CurrentWeatherRepoImpl implements CurrentWeatherRepository {
  //источник данных передается зависимостью
  final WeatherApiDataSource weatherApiDataSource;

  //конструктор с обязательным именованым параметром источника данных
  CurrentWeatherRepoImpl({required this.weatherApiDataSource});

  //переоперделение метода абстрактоного класса репозитория для
  //получения объекта с данными о текущей погоде уровня domain
  @override
  Future<CurrentWeatherEntity> getCurrentWeather({required cityName}) async {
    //запрос в источник данных с передачей параметра введенного города
    //и получением объекта текущей погоды уровня data
    final CurrentWeatherDTO currentWeather = await weatherApiDataSource
        .getCurrentWeatherByCityName(cityName: cityName);
    //преобразование в модель уровня domain идет через extension
    //в нем данные модели уровня data мапятся в данные модели уровня domain
    //в процессе этого можно преобразовать формат отображения данных
    return currentWeather.toEntity();
  }
}
