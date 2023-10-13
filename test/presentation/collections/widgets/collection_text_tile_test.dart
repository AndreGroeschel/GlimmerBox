import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/collection_view_model.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_text_tile.dart';
import 'package:mocktail/mocktail.dart';

class MockCollectionViewModel extends Mock implements CollectionViewModel {}

void main() {
  setUpAll(() {
    registerFallbackValue(MockCollectionViewModel());
  });

  testWidgets('CollectionTextTile displays name from viewModel',
      (WidgetTester tester) async {
    final mockViewModel = MockCollectionViewModel();
    when(() => mockViewModel.name).thenReturn('Test Collection');

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CollectionTextTile(
            index: 0,
            viewModel: mockViewModel,
          ),
        ),
      ),
    );

    expect(find.text('Test Collection'), findsOneWidget);
  });
}
