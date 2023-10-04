import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';

/// A collection of NFTs
@freezed
class Collection with _$Collection {
  const factory Collection({
    @Default('') String name,
    @Default('') String description,
    @Default('') String imagePath,
  }) = _Collection;
}
