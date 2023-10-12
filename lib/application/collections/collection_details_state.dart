import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/nft_page.dart';

part 'collection_details_state.freezed.dart';

@freezed
class CollectionDetailsState with _$CollectionDetailsState {
  // Initial state
  const factory CollectionDetailsState.initial() = CollectionDetailsInitial;
  // While collection details are loading
  const factory CollectionDetailsState.loading() = CollectionDetailsLoading;
  // Collected details have loaded
  const factory CollectionDetailsState.loaded(NftPage collectionDetailsPage) =
      CollectionDetailsLoaded;
  // State when an error occurs
  const factory CollectionDetailsState.error(String message) =
      CollectionDetailsError;
}
