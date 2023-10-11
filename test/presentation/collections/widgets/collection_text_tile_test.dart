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

  testWidgets('CollectionTextTile applies backgroundColor',
      (WidgetTester tester) async {
    final mockViewModel = MockCollectionViewModel();
    when(() => mockViewModel.name).thenReturn('Test Collection');

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CollectionTextTile(
            index: 0,
            viewModel: mockViewModel,
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );

    final container = tester.firstWidget<Container>(find.byType(Container));
    expect(container.color, Colors.red);
  });

  testWidgets('CollectionTextTile includes bottomSpace when provided',
      (WidgetTester tester) async {
    final mockViewModel = MockCollectionViewModel();
    when(() => mockViewModel.name).thenReturn('Test Collection');

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CollectionTextTile(
            index: 0,
            viewModel: mockViewModel,
            bottomSpace: 20,
          ),
        ),
      ),
    );

    expect(find.byType(Column), findsOneWidget);

    final container = tester.widget<Container>(
      find
          .descendant(
            of: find.byType(Column),
            matching: find.byType(Container),
          )
          .last,
    );

    expect(container.color, Colors.green);
    expect(container.constraints?.maxHeight, 20);
  });
}
