# Weather App for Friflex
Тестовое приложение

В приложении реализованы:
- работа с двумя запросами API погоды:
  - запрос текущей погоды
  - запрос прогноза погоды на 3 дня с интревалом 3 часа
- отображение экрана текущей погоды с:
  - иконкой соответствующего состояния погоды
  - текстового описания состояния погоды
  - температуры
  - влажности
  - сокрости ветра
- отображение экрана списка прогнозов погоды на 3 дня с интервалом 3 часа с сортировкой прогнозов погоды по температуре, начиная с самого холодного прогноза и отображающих:
  - иконку соответствующего состояния погоды
  - текстовое описания состояния погоды
  - температуру
  - влажность
  - сокрость ветра
- поле ввода валидирует вводимый текст по длине символов и при подтверждении пустого поля ввода отображается текст ошибки
- использована библиотека для получения состояния интернет-соединения connectivity_plus и при всех интернет запросах проверяется состояние сети
- последнее введенное значение города сохраняется в системных настройках и при следующем входе открвается сразу экран текущей погоды
- помимо обычной ошибки получения данных, отдельно выделена ошибка, сообщающая о невозможности найти запрошенный город в базе
- для управлением состоянием используется библиотека flutter_bloc
- для зависимостей используется библиотека get_it
- структура проекта разбита по слоям, без фич. Три слоя - data, domain, presentation
- для dto использована библиотека freezed, для кодогенерации классов
- для преобразования dto в entity используются мапперы посредством расширения функций. С помощью мапперов можно изменить тип данных при переходе от dto к entity   

<img width="250" alt="menu" src="https://user-images.githubusercontent.com/30658712/182982645-30fef464-af55-48b3-b7d7-7d399ad8b30f.png"> <img width="250" alt="menu" src="https://user-images.githubusercontent.com/30658712/182982650-3cddeab6-404e-41f8-9925-c1355f5b0baf.png"> <img width="250" alt="menu" src="https://user-images.githubusercontent.com/30658712/182982739-adb5c18f-d4c6-456a-978b-7dd4a9ac2afb.png"> <img width="250" alt="menu" src="https://user-images.githubusercontent.com/30658712/182983247-9c994d0e-3921-443f-9cd5-41e68c347bc0.png"> 
<img width="250" alt="menu" src="https://user-images.githubusercontent.com/30658712/182982690-a705696f-e448-42fa-96af-06ebb9bc8fca.png"> 
<img width="250" alt="menu" src="https://user-images.githubusercontent.com/30658712/182983151-0b1c14c4-ecb7-45f7-a62d-879475fc4888.png"> 
<img width="250" alt="menu" src="https://user-images.githubusercontent.com/30658712/182982673-5d02e5f9-1e1c-4392-b5df-c4448d00ca8e.png"> 


