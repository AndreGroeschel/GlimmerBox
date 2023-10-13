import 'package:bloc/bloc.dart';
import 'package:glimmer_box/application/collections/events/nft_details_event.dart';
import 'package:glimmer_box/application/collections/states/nft_details_state.dart';
import 'package:glimmer_box/domain/collections/repositories/collection_repository.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';
import 'package:logger/logger.dart';

class NftDetailsBloc extends Bloc<NftDetailsEvent, NftDetailsState> {
  NftDetailsBloc({
    required this.collectionRepository,
    required this.logger,
  }) : super(const NftDetailsState.initial()) {
    on<NftDetailsEvent>(_onLoadNftDetails);
  }

  final CollectionRepository collectionRepository; // Initial state
  final Logger logger;

  Future<void> _onLoadNftDetails(
    NftDetailsEvent event,
    Emitter<NftDetailsState> emit,
  ) async {
    final nftDetailsOrFailure = await collectionRepository.getNftDetails(
      chain: event.chainIdentifier,
      address: event.address,
      identifier: event.identifier,
    );
    await nftDetailsOrFailure.fold(
      (l) => _handleFailure(l, emit),
      (r) async => emit.forEach(r, onData: NftDetailsLoaded.new),
    );
  }

  Future<void> _handleFailure(
    OpenSeaApiFailure failure,
    Emitter<NftDetailsState> emit,
  ) async {
    logger.e(failure);

    emit.call(NftDetailsState.error(failure.toString()));
  }
}
