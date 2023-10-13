import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/nft_view_model.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_details_grid.dart';
import 'package:glimmer_box/presentation/collections/widgets/nft_tile.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/mock_go_router.dart';
import '../../../helpers/mocks_fakes.dart';
import 'collection_grid_test.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(MockCollectionViewModel());
  });

  testWidgets(
      'CollectionDetailsGrid displays NftTile when imageUrl is not empty',
      (WidgetTester tester) async {
    final mockViewModel = MockNftViewModel();
    when(() => mockViewModel.imageUrl).thenReturn('some path');
    when(() => mockViewModel.description).thenReturn('some description');
    when(() => mockViewModel.name).thenReturn('nft name');

    await tester.pumpWidget(
      MaterialApp(
        home: CollectionDetailsGrid(
          nfts: [mockViewModel],
          chainIdentifier: 'chain',
        ),
      ),
    );

    expect(find.byType(NftTile), findsOneWidget);
  });

  testWidgets('tap on NftTile navigates to details page', (tester) async {
    final mockGoRouter = MockGoRouter();
    await tester.pumpWidget(
      MaterialApp(
        home: MockGoRouterProvider(
          goRouter: mockGoRouter,
          child: const CollectionDetailsGrid(
            nfts: [
              NftViewModel(
                name: 'nft1',
                description: 'description',
                imageUrl: 'nftUrl',
              ),
            ],
            chainIdentifier: 'chain',
          ),
        ),
      ),
    );

    // Find the first NftTile widget.
    final firstTile = find.byType(NftTile).first;
    expect(firstTile, findsOneWidget);

    // Simulate a tap on the tile.
    await tester.tap(firstTile);

    // Pump the tester to trigger the navigation.
    await tester.pumpAndSettle();

    // Expect that a navigation event happened.
    verify(() => mockGoRouter.go(any())).called(1);
  });
}
