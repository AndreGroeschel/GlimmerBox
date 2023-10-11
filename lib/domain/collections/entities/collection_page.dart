import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/collection.dart';

part 'collection_page.freezed.dart';

// Hold NFT collections, along with any additional metadata
// like pagination cursors.
@freezed
class CollectionPage with _$CollectionPage {
  const factory CollectionPage({
    @Default([]) List<Collection> collections,
    @Default('') String next,
  }) = _CollectionPage;
}
