import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/domain/bloc/internet_connection/connected_bloc.dart';
import 'package:friflex_weather_app/domain/interfaces/connected_repo.dart';
import 'package:mocktail/mocktail.dart';

//мок репозитория с данными о состоянии подключения
class MockConnectedRepository extends Mock implements ConnectedRepository {}

void main() {
  late MockConnectedRepository mockConnectedRepository;
  late ConnectedBloc connectedBloc;

  setUp(() {
    //инициализация мока репозитория текущего состояния приложения
    mockConnectedRepository = MockConnectedRepository();
  });

  blocTest<ConnectedBloc, ConnectedState>('should emit [Init] on init',
      // настройка поведения моков
      setUp: () {
        //при прослушивании стрима вернется этот стрим
        when(mockConnectedRepository.getConnectedStream)
            .thenAnswer((_) => Stream<bool>.fromIterable([]));
        //инициализируем блок
        connectedBloc =
            ConnectedBloc(connectedRepository: mockConnectedRepository);
      },
      //указать все для построения блока включая моки и их зависимости
      build: () => connectedBloc,
      // //указать какое событие блока добавить
      act: (bloc) => bloc.add(InitConnectionEvent()),
      //перечень состояний, которые будут выбрасываться после вызова act
      expect: () => <ConnectedState>[
            ConnectedInitialState(),
          ],
      //убедиться были ли вызваны методы
      verify: (cubit) =>
          verify(() => mockConnectedRepository.getConnectedStream()));

  blocTest<ConnectedBloc, ConnectedState>(
      'should emit [Init, Success] on init working connection',
      // настройка поведения моков
      setUp: () {
        //при прослушивании стрима вернется этот стрим
        when(mockConnectedRepository.getConnectedStream)
            .thenAnswer((_) => Stream<bool>.fromIterable([true]));
        //инициализируем блок
        connectedBloc =
            ConnectedBloc(connectedRepository: mockConnectedRepository);
      },
      //указать все для построения блока включая моки и их зависимости
      build: () => connectedBloc,
      // //указать какое событие блока добавить
      act: (bloc) => bloc.add(InitConnectionEvent()),
      //перечень состояний, которые будут выбрасываться после вызова act
      expect: () => <ConnectedState>[
            ConnectedInitialState(),
            ConnectedSuccessState(),
          ],
      //убедиться были ли вызваны методы
      verify: (cubit) =>
          verify(() => mockConnectedRepository.getConnectedStream()));

  blocTest<ConnectedBloc, ConnectedState>(
      'should emit [Init, Failure] on init fail connection',
      // настройка поведения моков
      setUp: () {
        //при прослушивании стрима вернется этот стрим
        when(mockConnectedRepository.getConnectedStream)
            .thenAnswer((_) => Stream<bool>.fromIterable([false]));
        //инициализируем блок
        connectedBloc =
            ConnectedBloc(connectedRepository: mockConnectedRepository);
      },
      //указать все для построения блока включая моки и их зависимости
      build: () => connectedBloc,
      // //указать какое событие блока добавить
      act: (bloc) => bloc.add(InitConnectionEvent()),
      //перечень состояний, которые будут выбрасываться после вызова act
      expect: () => <ConnectedState>[
            ConnectedInitialState(),
            ConnectedFailureState(),
          ],
      //убедиться были ли вызваны методы
      verify: (cubit) =>
          verify(() => mockConnectedRepository.getConnectedStream()));

  blocTest<ConnectedBloc, ConnectedState>(
      'should emit [Init, Success, Failure, Success] on connection data changes',
      // настройка поведения моков
      setUp: () {
        //при прослушивании стрима вернется этот стрим
        when(mockConnectedRepository.getConnectedStream)
            .thenAnswer((_) => Stream<bool>.fromIterable([true, false, true]));
        //инициализируем блок
        connectedBloc =
            ConnectedBloc(connectedRepository: mockConnectedRepository);
      },
      //указать все для построения блока включая моки и их зависимости
      build: () => connectedBloc,
      // //указать какое событие блока добавить
      act: (bloc) => bloc.add(InitConnectionEvent()),
      //перечень состояний, которые будут выбрасываться после вызова act
      expect: () => <ConnectedState>[
            ConnectedInitialState(),
            ConnectedSuccessState(),
            ConnectedFailureState(),
            ConnectedSuccessState(),
          ],
      //убедиться были ли вызваны методы
      verify: (cubit) =>
          verify(() => mockConnectedRepository.getConnectedStream()));
}
