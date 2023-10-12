import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/domain/collections/entities/contract.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/collection_view_model.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_grid.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_image_tile.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_text_tile.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/mock_go_router.dart';
import '../../../helpers/mocks_fakes.dart';

class MockCollectionViewModel extends Mock implements CollectionViewModel {}

class _MyHttpOverrides extends HttpOverrides {}

void main() {
  setUpAll(() {
    registerFallbackValue(MockCollectionViewModel());
  });

  testWidgets(
      'CollectionGrid displays CollectionImageTile when imagePath is not empty',
      (WidgetTester tester) async {
    final mockViewModel = MockCollectionViewModel();
    when(() => mockViewModel.imagePath).thenReturn('some_path');
    when(() => mockViewModel.contracts).thenReturn([const Contract()]);
    when(() => mockViewModel.name).thenReturn('collection_name');

    await tester.pumpWidget(
      MaterialApp(
        home: CollectionGrid(
          collections: [mockViewModel],
        ),
      ),
    );

    expect(find.byType(CollectionImageTile), findsOneWidget);
  });

  testWidgets(
      'CollectionGrid displays CollectionTextTile when imagePath is empty',
      (WidgetTester tester) async {
    final mockViewModel = MockCollectionViewModel();
    when(() => mockViewModel.contracts).thenReturn([const Contract()]);
    when(() => mockViewModel.name).thenReturn('collection_name');
    when(() => mockViewModel.imagePath).thenReturn('');

    await tester.pumpWidget(
      MaterialApp(
        home: CollectionGrid(
          collections: [mockViewModel],
        ),
      ),
    );

    expect(find.byType(CollectionTextTile), findsOneWidget);
  });

  testWidgets('tap on collection tile navigates to collection details page',
      (tester) async {
    HttpOverrides.global = _MyHttpOverrides();

    final mockGoRouter = MockGoRouter();
    await tester.pumpWidget(
      MaterialApp(
        home: MockGoRouterProvider(
          goRouter: mockGoRouter,
          child: const CollectionGrid(
            collections: [
              CollectionViewModel(
                name: 'first collection',
                description: 'description',
                imagePath: 'image path',
                contracts: [Contract(chain: 'chain', address: 'address')],
              ),
            ],
          ),
        ),
      ),
    );

    // Find the first NftTile widget.
    final firstTile = find.byType(CollectionImageTile).first;
    expect(firstTile, findsOneWidget);

    // Simulate a tap on the tile.
    await tester.tap(firstTile);

    // Pump the tester to trigger the navigation.
    await tester.pump();

    // Expect that a navigation event happened.
    verify(() => mockGoRouter.go(any())).called(1);
  });
}
