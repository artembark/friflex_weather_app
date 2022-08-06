import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friflex_weather_app/app/app_const.dart';
import 'package:friflex_weather_app/app/app_strings.dart';
import 'package:friflex_weather_app/app/app_text_styles.dart';
import 'package:friflex_weather_app/domain/bloc/app_settings/app_settings_cubit.dart';
import 'package:friflex_weather_app/domain/bloc/internet_connection/connected_bloc.dart';

///Страница ввода названия города
class CityInputPage extends StatelessWidget {
  const CityInputPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppConst.appName),
        ),
        body: const CityInputTextField());
  }
}

class CityInputTextField extends StatefulWidget {
  const CityInputTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<CityInputTextField> createState() => _CityInputTextFieldState();
}

class _CityInputTextFieldState extends State<CityInputTextField> {
  //контроллер для доступа к текстовому полю
  final TextEditingController cityNameController = TextEditingController();

  //текст ошибки поля для ввода
  String errorText = '';

  @override
  void dispose() {
    //для высвобождения любой контроллер необходимо уничтожать
    cityNameController.dispose();
    //метод суперкласса
    super.dispose();
  }

  //валидация вводимых данных
  void checkTextFieldValue(String value) {
    //в зависимости от длины строки
    if (value.length > 1) {
      errorText = '';
    } else if (value.length == 1) {
      errorText = AppStrings.errorShortName;
    } else {
      errorText = AppStrings.errorNoCityName;
    }
    //обновление состояния
    setState(() {});
  }

  //переход на экран погоды
  void navigateToWeatherScreen(BuildContext context) {
    //проверка на пустое поле
    if (cityNameController.text != '') {
      //сохранение введенного города
      context.read<AppSettingsCubit>().saveCity(cityNameController.text);
      //проверка наличия интернет-соединения
      if (context.read<ConnectedBloc>().state is ConnectedSuccessState ||
          kIsWeb) {
        //переход на страницу с текущей погодой
        Navigator.pushNamed(context, AppConst.currentWeatherRoute);
      } else {
        //демонстрация уведомления в случае отсутствия интернета
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(AppStrings.errorConnection),
        ));
      }
    } else {
      //установка текста ошибки
      errorText = AppStrings.errorNoCityName;
      //обновление состояния
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        //размещение колонки по центру экрана
        child: Column(
      //расположение элементов колнки по центру
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppStrings.labelGetWeather,
          style: AppTextStyle.titleTextTextStyle,
        ),
        //отступ со всех сторон
        Padding(
          //настройка отступа
          padding: const EdgeInsets.all(16.0),
          //поле для ввода названия города
          child: TextField(
            //назначается контроллер
            controller: cityNameController,
            //включается текстовая клавиатура
            keyboardType: TextInputType.text,
            //делаем первую букву в слове заглавной
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
              //пустой helperText для предотвращения смещения виджетов при появдении ошибки
              helperText: ' ',
              //проверяется наличие текста ошибки
              errorText: (errorText == '') ? null : errorText,
              //отображение иконки для очистки текстового поля
              suffixIcon: IconButton(
                onPressed: cityNameController.clear,
                icon: const Icon(Icons.clear),
              ),
              //включение внешней рамки
              border: const OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            //валидация данных по мере ввода
            onChanged: checkTextFieldValue,
          ),
        ),
        //кнопка для перехода на следующий экран
        OutlinedButton(
          onPressed: () => navigateToWeatherScreen(context),
          child: const Text(AppStrings.labelConfirmButton),
        )
      ],
    ));
  }
}
