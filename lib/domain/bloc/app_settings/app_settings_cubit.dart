import 'package:bloc/bloc.dart';
import 'package:friflex_weather_app/app/app_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_settings_state.dart';

///кубит для сохранения и доступу к хранилищу SharedPreferences
class AppSettingsCubit extends Cubit<AppSettingsState> {
  //объект доступа к хранилищу sharedPreferences передается зависимостью
  final SharedPreferences sharedPreferences;

  //конструктор с обязательным именованым параметром объекта доступа к хранилищу
  AppSettingsCubit({required this.sharedPreferences})
      : super(AppSettingsState());

  //функция сохранения текущего выбранного города в хранилище
  Future<void> saveCity(String cityName) async {
    //запись названия города по ключу в хранилище, асинхронная
    await sharedPreferences.setString(AppConst.sharedPrefCityKey, cityName);
    //выбрасывание обновленного состояние с новым название города
    emit(AppSettingsState(cityName: cityName));
  }

  //функция получения сохраненного города из хранилища
  String getCityName() {
    //чтение названия города из хранилища по ключу
    //в случае отсутствия ключа считывается пустая строка
    final String cityName =
        sharedPreferences.getString(AppConst.sharedPrefCityKey) ?? '';
    //выбрасывание обновленного состояние с полученным названием города
    emit(AppSettingsState(cityName: cityName));
    //возвращаемое значение
    return cityName;
  }
}
