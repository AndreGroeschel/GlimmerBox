import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/application/collections/blocs/nft_details_bloc.dart';
import 'package:glimmer_box/application/collections/states/nft_details_state.dart';
import 'package:glimmer_box/domain/collections/entities/nft_details.dart';
import 'package:glimmer_box/presentation/collections/screens/nft_details_screen.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octo_image/octo_image.dart';

import '../../../helpers/mocks_fakes.dart';

void main() {
  // Initialize mocktail settings for null safety
  setUpAll(() {
    registerFallbackValue(FakeCollectionEvent());
    registerFallbackValue(FakeCollectionState());
  });

  group('NftDetailsPage', () {
    late MockNftDetailsBloc mockNftDetailBloc;

    setUp(() {
      mockNftDetailBloc = MockNftDetailsBloc();
    });

    testWidgets('Renders correctly in initial state',
        (WidgetTester tester) async {
      when(() => mockNftDetailBloc.state)
          .thenReturn(const NftDetailsState.initial());

      await tester.pumpWidget(
        BlocProvider<NftDetailsBloc>(
          create: (_) => mockNftDetailBloc,
          child: const MaterialApp(
            home: NftDetailsScreen(
              name: 'Details',
              chain: 'chain',
              address: 'address',
              identifier: 'identifier',
            ),
          ),
        ),
      );

      expect(find.text('Initial State'), findsOneWidget);
    });

    testWidgets('Renders correctly in loaded state with no nfts',
        (WidgetTester tester) async {
      when(() => mockNftDetailBloc.state).thenReturn(
        const NftDetailsState.loaded(
          NftDetails(),
        ),
      );

      await tester.pumpWidget(
        BlocProvider<NftDetailsBloc>(
          create: (_) => mockNftDetailBloc,
          child: const MaterialApp(
            home: NftDetailsScreen(
              name: 'Details',
              chain: 'chain',
              address: 'address',
              identifier: 'identifier',
            ),
          ),
        ),
      );

      expect(find.byType(SafeArea), findsOneWidget);
    });

    testWidgets(
        'Shows loading indicator when CollectionDetailsBloc '
        'emits loading state', (WidgetTester tester) async {
      when(() => mockNftDetailBloc.state).thenReturn(
        const NftDetailsState.loading(),
      );

      await tester.pumpWidget(
        BlocProvider<NftDetailsBloc>(
          create: (_) => mockNftDetailBloc,
          child: const MaterialApp(
            home: NftDetailsScreen(
              name: 'Details',
              chain: 'chain',
              address: 'address',
              identifier: 'identifier',
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

      when(() => mockNftDetailBloc.state).thenReturn(
        const NftDetailsState.error(errorMessage),
      );

      await tester.pumpWidget(
        BlocProvider<NftDetailsBloc>(
          create: (_) => mockNftDetailBloc,
          child: const MaterialApp(
            home: NftDetailsScreen(
              name: 'Details',
              chain: 'chain',
              address: 'address',
              identifier: 'identifier',
            ),
          ),
        ),
      );

      expect(find.text('Error: $errorMessage'), findsOneWidget);
    });

    testWidgets('Renders correctly in loaded state with nft',
        (WidgetTester tester) async {
      const nftDetail = NftDetails(
        name: 'test1',
        description: 'description1',
        imageUrl: 'path1',
      );

      when(() => mockNftDetailBloc.state).thenReturn(
        const NftDetailsState.loaded(
          nftDetail,
        ),
      );

      await tester.pumpWidget(
        BlocProvider<NftDetailsBloc>(
          create: (_) => mockNftDetailBloc,
          child: const MaterialApp(
            home: NftDetailsScreen(
              name: 'Details',
              chain: 'chain',
              address: 'address',
              identifier: 'identifier',
            ),
          ),
        ),
      );

      expect(find.byType(OctoImage), findsOneWidget);
    });
  });
}
