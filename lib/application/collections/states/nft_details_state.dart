import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/nft_details.dart';

part 'nft_details_state.freezed.dart';

@freezed
class NftDetailsState with _$NftDetailsState {
  const factory NftDetailsState.initial() = NftDetailsInitial;
  // While collection details are loading
  const factory NftDetailsState.loading() = NftDetailsLoading;
  // Collected details have loaded
  const factory NftDetailsState.loaded(NftDetails nftDetails) =
      NftDetailsLoaded;
  // State when an error occurs
  const factory NftDetailsState.error(String message) = NftDetailsError;
}
