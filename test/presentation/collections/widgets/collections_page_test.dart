import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/application/collections/collection_event.dart';
import 'package:glimmer_box/application/collections/collection_state.dart';
import 'package:glimmer_box/application/collections/collections_bloc.dart';
import 'package:glimmer_box/domain/collections/entities/collection.dart';
import 'package:glimmer_box/domain/collections/entities/collection_page.dart'
    as domain;
import 'package:glimmer_box/presentation/collections/widgets/collection_grid.dart';
import 'package:glimmer_box/presentation/collections/widgets/collections_page.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:mocktail/mocktail.dart';

class MockCollectionBloc extends MockBloc<CollectionEvent, CollectionState>
    implements CollectionBloc {}

void main() {
  // Initialize mocktail settings for null safety
  setUpAll(() {
    registerFallbackValue(FakeCollectionEvent());
    registerFallbackValue(FakeCollectionState());
  });

  group('CollectionsPage', () {
    late MockCollectionBloc mockCollectionBloc;

    setUp(() {
      mockCollectionBloc = MockCollectionBloc();
    });

    testWidgets('Renders correctly in initial state',
        (WidgetTester tester) async {
      when(() => mockCollectionBloc.state)
          .thenReturn(const CollectionState.initial());

      await tester.pumpWidget(
        BlocProvider<CollectionBloc>(
          create: (_) => mockCollectionBloc,
          child: const MaterialApp(
            home: CollectionsPage(),
          ),
        ),
      );

      expect(find.text('Initial State'), findsOneWidget);
    });

    testWidgets('Renders correctly in loaded state with no collections',
        (WidgetTester tester) async {
      when(() => mockCollectionBloc.state).thenReturn(
        const CollectionState.loaded(
          domain.CollectionPage(next: 'someCursor'),
        ),
      );

      await tester.pumpWidget(
        BlocProvider<CollectionBloc>(
          create: (_) => mockCollectionBloc,
          child: const MaterialApp(
            home: CollectionsPage(),
          ),
        ),
      );

      expect(find.byType(CollectionGrid), findsOneWidget);
    });

    testWidgets('Renders correctly in loaded state with collections',
        (WidgetTester tester) async {
      const testCollection1 = Collection(
        name: 'test1',
        description: 'description1',
        imagePath: 'path1',
      );
      const testCollection2 = Collection(
        name: 'test2',
        description: 'description2',
        imagePath: 'path2',
      );

      when(() => mockCollectionBloc.state).thenReturn(
        const CollectionState.loaded(
          domain.CollectionPage(
            collections: [testCollection1, testCollection2],
            next: 'someCursor',
          ),
        ),
      );

      await tester.pumpWidget(
        BlocProvider<CollectionBloc>(
          create: (_) => mockCollectionBloc,
          child: const MaterialApp(
            home: CollectionsPage(),
          ),
        ),
      );

      expect(find.byType(CollectionGrid), findsOneWidget);
    });

    testWidgets('Load next collection page when tapping next button',
        (WidgetTester tester) async {
      when(() => mockCollectionBloc.state).thenReturn(
        const CollectionState.loaded(
          domain.CollectionPage(next: 'someCursor'),
        ),
      );

      await tester.pumpWidget(
        BlocProvider<CollectionBloc>(
          create: (_) => mockCollectionBloc,
          child: const MaterialApp(
            home: CollectionsPage(),
          ),
        ),
      );

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      verify(() => mockCollectionBloc.add(any(that: isA<LoadCollections>())))
          .called(1);
    });

    testWidgets('Should reload', (WidgetTester tester) async {
      when(() => mockCollectionBloc.state).thenReturn(
        const CollectionState.loaded(
          domain.CollectionPage(next: 'someCursor'),
        ),
      );

      await tester.pumpWidget(
        BlocProvider<CollectionBloc>(
          create: (_) => mockCollectionBloc,
          child: const MaterialApp(
            home: CollectionsPage(),
          ),
        ),
      );

      await tester.fling(
        find.byType(LiquidPullToRefresh),
        const Offset(0, 400),
        800,
      );
      await tester.pump();

      await tester.pump(const Duration(seconds: 3));

      verify(() => mockCollectionBloc.add(any(that: isA<LoadCollections>())))
          .called(1);
    });

    testWidgets(
        'Shows loading indicator when CollectionBloc emits loading state',
        (WidgetTester tester) async {
      when(() => mockCollectionBloc.state).thenReturn(
        const CollectionState.loading(),
      );

      await tester.pumpWidget(
        BlocProvider<CollectionBloc>.value(
          value: mockCollectionBloc,
          child: const MaterialApp(
            home: CollectionsPage(),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('Shows dynamic error when CollectionBloc emits error state',
        (WidgetTester tester) async {
      const errorMessage = 'Network Error';

      when(() => mockCollectionBloc.state).thenReturn(
        const CollectionState.error(errorMessage),
      );

      await tester.pumpWidget(
        BlocProvider<CollectionBloc>.value(
          value: mockCollectionBloc,
          child: const MaterialApp(
            home: CollectionsPage(),
          ),
        ),
      );

      expect(find.text('Error: $errorMessage'), findsOneWidget);
    });
  });
}

class FakeCollectionEvent extends Fake implements CollectionEvent {}

class FakeCollectionState extends Fake implements CollectionState {}
