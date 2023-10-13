import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/application/collections/blocs/nft_details_bloc.dart';
import 'package:glimmer_box/application/collections/events/nft_details_event.dart';
import 'package:glimmer_box/application/collections/states/nft_details_state.dart';
import 'package:glimmer_box/domain/collections/entities/nft_details.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/mocks_fakes.dart';

// Mocking the dependencies

class MockLogger extends Mock implements Logger {}

void main() {
  late MockCollectionRepository collectionRepository;
  late Logger logger;
  late NftDetailsBloc bloc;

  setUp(() {
    collectionRepository = MockCollectionRepository();
    logger = MockLogger();
    bloc = NftDetailsBloc(
      collectionRepository: collectionRepository,
      logger: logger,
    );
  });

  tearDown(() {
    bloc.close();
  });

  // Test case: initial state is correct
  test('Initial state should be NftDetailsState.initial()', () {
    expect(bloc.state, equals(const NftDetailsState.initial()));
  });

  // Test group for LoadCollectionDetails event
  group('LoadCollectionDetails', () {
    const mockNftDetails = NftDetails(name: 'nft1');

    // Mock a Stream of CollectionPage
    final mockStream = Stream.value(mockNftDetails);

    // Test case: emits [loaded] when successful
    blocTest<NftDetailsBloc, NftDetailsState>(
      'emits [loaded] when LoadNftDetails is successful',
      build: () => bloc,
      act: (bloc) {
        when(
          () => collectionRepository.getNftDetails(
            chain: any(named: 'chain'),
            identifier: any(named: 'identifier'),
            address: any(named: 'address'),
          ),
        ).thenAnswer((_) async => Right(mockStream));

        bloc.add(
          const LoadNftDetailsEvent(
            chainIdentifier: 'someChain',
            address: 'address',
            identifier: 'identifier',
          ),
        );
      },
      expect: () => [
        const NftDetailsState.loaded(mockNftDetails),
      ],
    );

    blocTest<NftDetailsBloc, NftDetailsState>(
      'emits [error] when there is a failure',
      build: () {
        when(
          () => collectionRepository.getNftDetails(
            chain: any(named: 'chain'),
            identifier: 'identifier',
            address: any(named: 'address'),
          ),
        ).thenAnswer(
          (_) async => const Left(OpenSeaApiFailure.invalidApiKey()),
        );
        return bloc;
      },
      act: (bloc) => bloc.add(
        const LoadNftDetailsEvent(
          chainIdentifier: 'someChain',
          address: 'address',
          identifier: 'identifier',
        ),
      ),
      expect: () => [
        NftDetailsState.error(
          const OpenSeaApiFailure.invalidApiKey().toString(),
        ),
      ],
    );
  });
}
