import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/owner.dart';
import 'package:glimmer_box/domain/collections/entities/rarity.dart';
import 'package:glimmer_box/domain/collections/entities/trait.dart';

part 'nft_details.freezed.dart';

/// An NFT
@freezed
class NftDetails with _$NftDetails {
  const factory NftDetails({
    /// Identifier for the NFT
    @Default('') String identifier,

    /// Name of the NFT collection
    @Default('') String collection,

    /// Token standard (e.g., erc721)
    @Default('') String tokenStandard,

    /// Contract address
    @Default('') String contract,

    /// NFT name
    @Default('') String name,

    /// Description of the NFT
    @Default('') String description,

    /// Image URL for the NFT
    @Default('') String imageUrl,

    /// Last update timestamp
    @Default('') String updatedAt,

    /// Flag indicating if the NFT is considered suspicious
    @Default(false) bool isSuspicious,

    /// The creator's address
    @Default('') String creator,

    /// List of owners of the NFT
    @Default([]) List<Owner> owners,

    /// Associated traits of the NFT
    @Default([]) List<Trait> traits,

    /// Rarity data for the NFT
    Rarity? rarity,
  }) = _NftDetails;
}
