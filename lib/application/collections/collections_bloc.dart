import 'package:bloc/bloc.dart';
import 'package:glimmer_box/application/collections/collection_event.dart';
import 'package:glimmer_box/application/collections/collection_state.dart';
import 'package:glimmer_box/domain/collections/repositories/collection_repository.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';
import 'package:logger/logger.dart';

// This BLoC controls the state for asset-related functionality.
class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  CollectionBloc({required this.collectionRepository, required this.logger})
      : super(const CollectionState.initial()) {
    on<LoadCollections>(_onLoadCollections);
  }

  final CollectionRepository collectionRepository; // Initial state
  final Logger logger;

  Future<void> _onLoadCollections(
    LoadCollections event,
    Emitter<CollectionState> emit,
  ) async {
    logger.i('Loading next page with cursor ${event.nextCursor}');
    final collectionPageOrFailure =
        await collectionRepository.getCollectionsPage(
      chainIdentifier: event.chainIdentifier,
      limit: event.limit,
      next: event.nextCursor,
    );
    await collectionPageOrFailure.fold(
      (l) => _handleFailure(l, emit),
      (r) async => emit.forEach(r, onData: CollectionLoaded.new),
    );
  }

  Future<void> _handleFailure(
    OpenSeaApiFailure failure,
    Emitter<CollectionState> emit,
  ) async {
    logger.e(failure);

    emit.call(CollectionState.error(failure.toString()));
  }
}
