import 'package:bloc_test/bloc_test.dart';
import 'package:glimmer_box/application/collections/collection_details_event.dart';
import 'package:glimmer_box/application/collections/collection_details_state.dart';
import 'package:glimmer_box/application/collections/collection_event.dart';
import 'package:glimmer_box/application/collections/collection_state.dart';
import 'package:glimmer_box/application/collections/collections_bloc.dart';
import 'package:glimmer_box/application/collections/collections_details_bloc.dart';
import 'package:glimmer_box/domain/collections/repositories/collection_repository.dart';
import 'package:glimmer_box/presentation/collections/viewmodels/nft_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

/// holds mocks and fakes used for testing
///
///
class FakeCollectionEvent extends Fake implements CollectionEvent {}

class FakeCollectionState extends Fake implements CollectionState {}

class MockCollectionRepository extends Mock implements CollectionRepository {}

class MockCollectionBloc extends MockBloc<CollectionEvent, CollectionState>
    implements CollectionBloc {}

class MockCollectionDetailsBloc
    extends MockBloc<CollectionDetailsEvent, CollectionDetailsState>
    implements CollectionDetailsBloc {}

class MockGoRouter extends Mock implements GoRouter {}

class MockNftViewModel extends Mock implements NftViewModel {}
