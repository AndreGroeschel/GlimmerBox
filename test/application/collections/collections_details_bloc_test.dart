import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/application/collections/collection_details_event.dart';
import 'package:glimmer_box/application/collections/collection_details_state.dart';
import 'package:glimmer_box/application/collections/collections_details_bloc.dart';
import 'package:glimmer_box/domain/collections/entities/nft.dart';
import 'package:glimmer_box/domain/collections/entities/nft_page.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/mocks_fakes.dart';

// Mocking the dependencies

class MockLogger extends Mock implements Logger {}

void main() {
  late MockCollectionRepository collectionRepository;
  late Logger logger;
  late CollectionDetailsBloc bloc;

  setUp(() {
    collectionRepository = MockCollectionRepository();
    logger = MockLogger();
    bloc = CollectionDetailsBloc(
      collectionRepository: collectionRepository,
      logger: logger,
    );
  });

  tearDown(() {
    bloc.close();
  });

  // Test case: initial state is correct
  test('Initial state should be CollectionDetailsState.initial()', () {
    expect(bloc.state, equals(const CollectionDetailsState.initial()));
  });

  // Test group for LoadCollectionDetails event
  group('LoadCollectionDetails', () {
    const nft1 = Nft(name: 'nft1');
    const nft2 = Nft(name: 'nft2');
    const mockNftPage = NftPage(
      nfts: [nft1, nft2],
      next: 'next_cursor_value',
    );
    // Mock a Stream of CollectionPage
    final mockStream = Stream.value(mockNftPage);

    // Test case: emits [loading, loaded] when successful
    blocTest<CollectionDetailsBloc, CollectionDetailsState>(
      'emits [loaded] when LoadCollectionDetails is successful',
      build: () => bloc,
      act: (bloc) {
        when(
          () => collectionRepository.getNftPage(
            chain: any(named: 'chain'),
            limit: any(named: 'limit'),
            address: any(named: 'address'),
          ),
        ).thenAnswer((_) async => Right(mockStream));

        bloc.add(
          const LoadCollectionDetails(
            chainIdentifier: 'someChain',
            limit: 10,
            address: 'address',
          ),
        );
      },
      expect: () => [
        const CollectionDetailsState.loaded(mockNftPage),
      ],
    );

    blocTest<CollectionDetailsBloc, CollectionDetailsState>(
      'emits [error] when there is a failure',
      build: () {
        when(
          () => collectionRepository.getNftPage(
            chain: any(named: 'chain'),
            limit: any(named: 'limit'),
            address: any(named: 'address'),
          ),
        ).thenAnswer(
          (_) async => const Left(OpenSeaApiFailure.invalidApiKey()),
        );
        return bloc;
      },
      act: (bloc) => bloc.add(
        const LoadCollectionDetails(
          chainIdentifier: 'someChain',
          limit: 10,
          address: 'address',
        ),
      ),
      expect: () => [
        CollectionDetailsState.error(
          const OpenSeaApiFailure.invalidApiKey().toString(),
        ),
      ],
    );
  });
}
