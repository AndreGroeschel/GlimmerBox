import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/collection_view_model.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_grid.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_image_tile.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_text_tile.dart';
import 'package:mocktail/mocktail.dart';

class MockCollectionViewModel extends Mock implements CollectionViewModel {}

void main() {
  setUpAll(() {
    registerFallbackValue(MockCollectionViewModel());
  });

  testWidgets(
      'CollectionGrid displays CollectionImageTile when imagePath is not empty',
      (WidgetTester tester) async {
    final mockViewModel = MockCollectionViewModel();
    when(() => mockViewModel.imagePath).thenReturn('some_path');

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
    when(() => mockViewModel.imagePath).thenReturn('');
    when(() => mockViewModel.name).thenReturn('Test Name');

    await tester.pumpWidget(
      MaterialApp(
        home: CollectionGrid(
          collections: [mockViewModel],
        ),
      ),
    );

    expect(find.byType(CollectionTextTile), findsOneWidget);
  });
}
