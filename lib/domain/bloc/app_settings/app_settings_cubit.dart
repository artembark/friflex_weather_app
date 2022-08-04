import 'package:bloc/bloc.dart';
import 'package:friflex_weather_app/app/app_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_settings_state.dart';

class AppSettingsCubit extends Cubit<AppSettingsState> {
  final SharedPreferences sharedPreferences;

  AppSettingsCubit({required this.sharedPreferences})
      : super(AppSettingsState());

  Future<void> saveCity(String cityName) async {
    await sharedPreferences.setString(AppConst.sharedPrefCityKey, cityName);
    emit(AppSettingsState(cityName: cityName));
  }

  String getCityName() {
    final String cityName =
        sharedPreferences.getString(AppConst.sharedPrefCityKey) ?? '';
    emit(AppSettingsState(cityName: cityName));
    return cityName;
  }
}
