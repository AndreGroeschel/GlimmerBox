import 'package:bloc/bloc.dart';
import 'package:glimmer_box/application/collections/collection_details_event.dart';
import 'package:glimmer_box/application/collections/collection_details_state.dart';
import 'package:glimmer_box/domain/collections/repositories/collection_repository.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';
import 'package:logger/logger.dart';

class CollectionDetailsBloc
    extends Bloc<CollectionDetailsEvent, CollectionDetailsState> {
  CollectionDetailsBloc({
    required this.collectionRepository,
    required this.logger,
  }) : super(const CollectionDetailsState.initial()) {
    on<CollectionDetailsEvent>(_onLoadCollectionDetails);
  }

  final CollectionRepository collectionRepository; // Initial state
  final Logger logger;

  Future<void> _onLoadCollectionDetails(
    CollectionDetailsEvent event,
    Emitter<CollectionDetailsState> emit,
  ) async {
    final collectionPageOrFailure = await collectionRepository.getNftPage(
      chain: event.chainIdentifier,
      address: event.address,
      limit: event.limit,
      next: event.nextCursor,
    );
    await collectionPageOrFailure.fold(
      (l) => _handleFailure(l, emit),
      (r) async => emit.forEach(r, onData: CollectionDetailsLoaded.new),
    );
  }

  Future<void> _handleFailure(
    OpenSeaApiFailure failure,
    Emitter<CollectionDetailsState> emit,
  ) async {
    logger.e(failure);

    emit.call(CollectionDetailsState.error(failure.toString()));
  }
}
