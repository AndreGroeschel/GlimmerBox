import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/collection_view_model.dart';
import 'package:glimmer_box/presentation/collections/widgets/collection_image_tile.dart';
import 'package:mocktail/mocktail.dart';
import 'package:octo_image/octo_image.dart';

class MockCollectionViewModel extends Mock implements CollectionViewModel {}

class MockDefaultCacheManager extends Mock implements DefaultCacheManager {}

void main() {
  setUpAll(() {
    registerFallbackValue(MockCollectionViewModel());
  });

  testWidgets('CollectionImageTile displays image from viewModel',
      (WidgetTester tester) async {
    final mockViewModel = MockCollectionViewModel();
    when(() => mockViewModel.imagePath)
        .thenReturn('http://example.com/image.jpg');
    when(() => mockViewModel.name).thenReturn('Collection name');

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CollectionImageTile(
            index: 0,
            width: 100,
            height: 100,
            viewModel: mockViewModel,
          ),
        ),
      ),
    );

    expect(find.byType(OctoImage), findsOneWidget);
  });
}
