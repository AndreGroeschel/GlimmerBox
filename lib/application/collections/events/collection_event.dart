import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_event.freezed.dart';

// This represents the possible events for the CollectionBloc.
@freezed
class CollectionEvent with _$CollectionEvent {
  // Event to trigger the loading of all assets
  const factory CollectionEvent.loadCollections({
    required String chainIdentifier,
    required int limit,
    @Default('') String nextCursor,
  }) = LoadCollections;
}
