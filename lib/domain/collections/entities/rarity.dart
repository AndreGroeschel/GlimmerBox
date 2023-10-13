import 'package:freezed_annotation/freezed_annotation.dart';

part 'rarity.freezed.dart';

/// Entity representing rarity data
@freezed
class Rarity with _$Rarity {
  /// Default constructor
  const factory Rarity({
    /// Rarity Rank of the NFT in the collection
    @Default(0) int rank,
  }) = _Rarity;
}
