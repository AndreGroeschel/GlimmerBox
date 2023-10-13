import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/rarity.dart';

part 'rarity_dto.freezed.dart';
part 'rarity_dto.g.dart';

/// DTO for RarityDataModel, representing rarity data
@freezed
class RarityDto with _$RarityDto {
  /// Default constructor
  const factory RarityDto({
    /// Deprecated Field
    @Default('') String strategyId,

    /// Deprecated Field
    @Default('') String strategyVersion,

    /// Rarity Rank of the NFT in the collection
    @Default(0) int rank,

    /// Deprecated Field
    @Default(0) double score,

    /// Deprecated Field
    @Default('') String calculatedAt,

    /// Deprecated Field
    @Default(0) int maxRank,

    /// Deprecated Field
    @Default(0) int totalSupply,

    /// Deprecated Field
    @Default('') String rankingFeatures,
  }) = _RarityDto;
  const RarityDto._();

  /// Creates a RarityDto object from JSON
  factory RarityDto.fromJson(Map<String, dynamic> json) =>
      _$RarityDtoFromJson(json);

  Rarity toRarity() {
    return Rarity(
      rank: rank,
    );
  }
}
