import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/application/collections/blocs/collections_bloc.dart';
import 'package:glimmer_box/application/collections/events/collection_event.dart';
import 'package:glimmer_box/application/collections/states/collection_state.dart';
import 'package:glimmer_box/domain/collections/entities/collection.dart';
import 'package:glimmer_box/domain/collections/entities/collection_page.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/mocks_fakes.dart';

// Mocking the dependencies

class MockLogger extends Mock implements Logger {}

void main() {
  late MockCollectionRepository collectionRepository;
  late Logger logger;
  late CollectionBloc bloc;

  setUp(() {
    collectionRepository = MockCollectionRepository();
    logger = MockLogger();
    bloc = CollectionBloc(
      collectionRepository: collectionRepository,
      logger: logger,
    );
  });

  tearDown(() {
    bloc.close();
  });

  // Test case: initial state is correct
  test('Initial state should be CollectionState.initial()', () {
    expect(bloc.state, equals(const CollectionState.initial()));
  });

  // Test group for LoadCollections event
  group('LoadCollections', () {
    const mockCollection1 = Collection(name: 'collection1');
    const mockCollection2 = Collection(name: 'collection2');
    const mockCollectionPage = CollectionPage(
      collections: [mockCollection1, mockCollection2],
      next: 'next_cursor_value',
    );
    // Mock a Stream of CollectionPage
    final mockStream = Stream.value(mockCollectionPage);

    // Test case: emits [loading, loaded] when successful
    blocTest<CollectionBloc, CollectionState>(
      'emits [loaded] when LoadCollections successful',
      build: () => bloc,
      act: (bloc) {
        when(
          () => collectionRepository.getCollectionsPage(
            chainIdentifier: any(named: 'chainIdentifier'),
            limit: any(named: 'limit'),
          ),
        ).thenAnswer((_) async => Right(mockStream));

        bloc.add(
          const LoadCollections(chainIdentifier: 'someChain', limit: 10),
        );
      },
      expect: () => [
        const CollectionState.loaded(mockCollectionPage),
      ],
    );

    blocTest<CollectionBloc, CollectionState>(
      'emits [error] when there is a failure',
      build: () {
        when(
          () => collectionRepository.getCollectionsPage(
            chainIdentifier: any(named: 'chainIdentifier'),
            limit: any(named: 'limit'),
          ),
        ).thenAnswer(
          (_) async => const Left(OpenSeaApiFailure.invalidApiKey()),
        );
        return bloc;
      },
      act: (bloc) =>
          bloc.add(const LoadCollections(chainIdentifier: 'chain1', limit: 10)),
      expect: () => [
        CollectionState.error(
          const OpenSeaApiFailure.invalidApiKey().toString(),
        ),
      ],
    );
  });
}
