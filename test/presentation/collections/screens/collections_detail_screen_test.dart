import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/application/collections/collection_details_state.dart';
import 'package:glimmer_box/application/collections/collections_details_bloc.dart';
import 'package:glimmer_box/domain/collections/entities/nft.dart';
import 'package:glimmer_box/domain/collections/entities/nft_page.dart';
import 'package:glimmer_box/presentation/collections/screens/collection_details_screen.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_details_grid.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/mocks_fakes.dart';

void main() {
  // Initialize mocktail settings for null safety
  setUpAll(() {
    registerFallbackValue(FakeCollectionEvent());
    registerFallbackValue(FakeCollectionState());
  });

  group('CollectionDetailsPage', () {
    late MockCollectionDetailsBloc mockCollectionDetailBloc;

    setUp(() {
      mockCollectionDetailBloc = MockCollectionDetailsBloc();
    });

    testWidgets('Renders correctly in initial state',
        (WidgetTester tester) async {
      when(() => mockCollectionDetailBloc.state)
          .thenReturn(const CollectionDetailsState.initial());

      await tester.pumpWidget(
        BlocProvider<CollectionDetailsBloc>(
          create: (_) => mockCollectionDetailBloc,
          child: const MaterialApp(
            home: CollectionDetailsScreen(
              name: 'Details',
              chain: 'chain',
              address: 'address',
            ),
          ),
        ),
      );

      expect(find.text('Initial State'), findsOneWidget);
    });

    testWidgets('Renders correctly in loaded state with no nfts',
        (WidgetTester tester) async {
      when(() => mockCollectionDetailBloc.state).thenReturn(
        const CollectionDetailsState.loaded(
          NftPage(next: 'someCursor'),
        ),
      );

      await tester.pumpWidget(
        BlocProvider<CollectionDetailsBloc>(
          create: (_) => mockCollectionDetailBloc,
          child: const MaterialApp(
            home: CollectionDetailsScreen(
              name: 'Details',
              chain: 'chain',
              address: 'address',
            ),
          ),
        ),
      );

      expect(find.byType(CollectionDetailsGrid), findsOneWidget);
    });

    testWidgets(
        'Shows loading indicator when CollectionDetailsBloc '
        'emits loading state', (WidgetTester tester) async {
      when(() => mockCollectionDetailBloc.state).thenReturn(
        const CollectionDetailsState.loading(),
      );

      await tester.pumpWidget(
        BlocProvider<CollectionDetailsBloc>.value(
          value: mockCollectionDetailBloc,
          child: const MaterialApp(
            home: CollectionDetailsScreen(
              name: 'Details',
              chain: 'chain',
              address: 'address',
            ),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets(
        'Shows dynamic error when CollectionDetailsBloc emits error state',
        (WidgetTester tester) async {
      const errorMessage = 'Network Error';

      when(() => mockCollectionDetailBloc.state).thenReturn(
        const CollectionDetailsState.error(errorMessage),
      );

      await tester.pumpWidget(
        BlocProvider<CollectionDetailsBloc>.value(
          value: mockCollectionDetailBloc,
          child: const MaterialApp(
            home: CollectionDetailsScreen(
              name: 'Details',
              chain: 'chain',
              address: 'address',
            ),
          ),
        ),
      );

      expect(find.text('Error: $errorMessage'), findsOneWidget);
    });

    testWidgets('Renders correctly in loaded state with nfts',
        (WidgetTester tester) async {
      const nft1 = Nft(
        name: 'test1',
        description: 'description1',
        imageUrl: 'path1',
      );
      const nft2 = Nft(
        name: 'test2',
        description: 'description2',
        imageUrl: 'path2',
      );

      when(() => mockCollectionDetailBloc.state).thenReturn(
        const CollectionDetailsState.loaded(
          NftPage(
            nfts: [nft1, nft2],
            next: 'someCursor',
          ),
        ),
      );

      await tester.pumpWidget(
        BlocProvider<CollectionDetailsBloc>(
          create: (_) => mockCollectionDetailBloc,
          child: const MaterialApp(
            home: CollectionDetailsScreen(
              name: 'Details',
              chain: 'chain',
              address: 'address',
            ),
          ),
        ),
      );

      expect(find.byType(CollectionDetailsGrid), findsOneWidget);
    });
  });
}
