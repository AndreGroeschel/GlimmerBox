import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_details_event.freezed.dart';

@freezed
class CollectionDetailsEvent with _$CollectionDetailsEvent {
  // Event to trigger the loading of all assets
  const factory CollectionDetailsEvent.loadCollectionDetails({
    required String chainIdentifier,
    required String address,
    required int limit,
    @Default('') String nextCursor,
  }) = LoadCollectionDetails;
}
