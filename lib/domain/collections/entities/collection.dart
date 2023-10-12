import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/contract.dart';

part 'collection.freezed.dart';

/// A collection of NFTs
@freezed
class Collection with _$Collection {
  const factory Collection({
    @Default('') String name,
    @Default('') String description,
    @Default('') String imagePath,
    @Default([]) List<Contract> contracts,
  }) = _Collection;
}
