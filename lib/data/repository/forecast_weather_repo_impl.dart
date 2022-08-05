import 'package:friflex_weather_app/data/datasources/remote/weather_api_data_source.dart';
import 'package:friflex_weather_app/data/dto/forecast_weather/forecast_weather_dto.dart';
import 'package:friflex_weather_app/domain/entities/forecast_weather/forecast_weather_entity.dart';
import 'package:friflex_weather_app/domain/interfaces/forecast_weather_repo.dart';

///Реализация репозитория получения данных о текущей погоде
class ForecastWeatherRepoImpl implements ForecastWeatherRepository {
  //источник данных передается зависимостью
  final WeatherApiDataSource weatherApiDataSource;

  //конструктор с обязательным именованым параметром источника данных
  ForecastWeatherRepoImpl({required this.weatherApiDataSource});

  @override
  Future<ForecastWeatherEntity> getForecastWeather({required cityName}) async {
    //запрос в источник данных с передачей параметра введенного города
    //и получением объекта текущей погоды уровня data
    final ForecastWeatherDTO forecastWeather =
        await weatherApiDataSource.getForecastByCityName(cityName: cityName);
    //преобразование в модель уровня domain идет через extension
    //в нем данные модели уровня data мапятся в данные модели уровня domain
    //в процессе этого можно преобразовать формат отображения данных
    return forecastWeather.toEntity();
  }
}
