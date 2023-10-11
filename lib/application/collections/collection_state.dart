import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/collection_page.dart';

part 'collection_state.freezed.dart';

// This represents the possible states for the CollectionBloc.
@freezed
class CollectionState with _$CollectionState {
  // Initial state
  const factory CollectionState.initial() = CollectionInitial;
  // While collection is loading
  const factory CollectionState.loading() = CollectionLoading;
  // Collected has loaded
  const factory CollectionState.loaded(CollectionPage collectionPage) =
      CollectionLoaded;

  // State when an error occurs
  const factory CollectionState.error(String message) = CollectionError;
}
