import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:friflex_weather_app/domain/bloc/internet_connection/connected_bloc.dart';
import 'package:friflex_weather_app/domain/interfaces/connected_repo.dart';
import 'package:mocktail/mocktail.dart';

class MockConnectedRepository extends Mock implements ConnectedRepository {}

void main() {
  late MockConnectedRepository mockConnectedRepository;
  late ConnectedBloc connectedBloc;

  setUp(() {
    mockConnectedRepository = MockConnectedRepository();
  });

  blocTest<ConnectedBloc, ConnectedState>(
      'should emit [loading, has data] when data has gotten successfully',
      // настройка поведения моков
      setUp: () {
        when(mockConnectedRepository.getConnectedStream)
            .thenAnswer((_) => Stream<bool>.fromIterable([true, false, true]));
        when(() => mockConnectedRepository.isConnected())
            .thenAnswer((_) => Future<bool>.value(true));
        connectedBloc =
            ConnectedBloc(connectedRepository: mockConnectedRepository);
      },
      //указать все для построения кубита включая моки и их зависимости
      build: () => connectedBloc,
      // //указать какой метод кубита вызывать
      act: (bloc) => bloc.add(InitConnectionEvent()),
      //перечень состояний, которые будут выбрасываться после вызова act
      expect: () => <ConnectedState>[
            ConnectedSuccessState(),
            ConnectedFailureState(),
            ConnectedSuccessState(),
          ],
      //убедиться были ли вызваны методы
      verify: (cubit) =>
          verify(() => mockConnectedRepository.getConnectedStream()));
}
