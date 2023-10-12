import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/nft.dart';
import 'package:glimmer_box/domain/collections/entities/nft_page.dart';

part 'nft_dto.freezed.dart';
part 'nft_dto.g.dart';

/// DTO for NFT data, representing a single NFT
@freezed
class NftDto with _$NftDto {
  /// Default constructor
  const factory NftDto({
    /// Identifier for the NFT
    @Default('') String identifier,

    /// Name of the NFT collection
    @Default('') String collection,

    /// Contract address
    @Default('') String contract,

    /// Token standard (e.g., erc721)
    @Default('') String tokenStandard,

    /// NFT name
    @Default('') String name,

    /// Description of the NFT
    @Default('') String description,

    /// Image URL for the NFT
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image_url') @Default('') String imageUrl,

    /// Metadata URL for the NFT
    @Default('') String metadataUrl,

    /// Creation timestamp
    @Default('') String createdAt,

    /// Last update timestamp
    @Default('') String updatedAt,

    /// If the NFT is disabled
    @Default(false) bool isDisabled,

    /// If the NFT is NSFW
    @Default(false) bool isNsfw,
  }) = _NftDto;
  const NftDto._();

  /// Creates a NftDto object from JSON
  factory NftDto.fromJson(Map<String, dynamic> json) => _$NftDtoFromJson(json);

  Nft toNft() {
    return Nft(
      identifier: identifier,
      name: name,
      description: description,
      imageUrl: imageUrl,
    );
  }
}

/// DTO for NFTs response, holds a list of NFT DTOs and a pagination token
@freezed
class NftsResponseDto with _$NftsResponseDto {
  /// Default constructor
  const factory NftsResponseDto({
    /// List of NFTs
    @Default(<NftDto>[]) List<NftDto> nfts,

    /// Next page token for pagination
    @Default('') String next,
  }) = _NftsResponseDto;
  const NftsResponseDto._();

  /// Creates a NftsResponseDto object from JSON
  factory NftsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NftsResponseDtoFromJson(json);

  NftPage toNftPage() {
    return NftPage(
      nfts: nfts.map((dto) => dto.toNft()).toList(),
      next: next,
    );
  }
}
