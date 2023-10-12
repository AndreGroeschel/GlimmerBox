import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/collection.dart';
import 'package:glimmer_box/domain/collections/entities/collection_page.dart';
import 'package:glimmer_box/domain/collections/entities/contract.dart';
import 'package:glimmer_box/infrastructure/logger/logger.dart';

part 'collection_dto.freezed.dart';
part 'collection_dto.g.dart';

/// Represents the collections response object from the OpenSea API.
@freezed
class CollectionsResponseDto with _$CollectionsResponseDto {
  /// Creates a new [CollectionsResponseDto].
  const factory CollectionsResponseDto({
    /// List of collections
    @Default(<CollectionDto>[]) List<CollectionDto> collections,

    /// Pagination info
    @Default('') String next,
  }) = _CollectionsResponseDto;

  /// Creates a [CollectionsResponseDto] from a map (parsed JSON).
  factory CollectionsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CollectionsResponseDtoFromJson(json);
  const CollectionsResponseDto._();

  CollectionPage toCollectionPage() {
    appLogger.i('Next cursor is $next');
    return CollectionPage(
      collections: collections.map((dto) => dto.toCollection()).toList(),
      next: next,
    );
  }
}

/// Represents an individual collection
@freezed
class CollectionDto with _$CollectionDto {
  /// Creates a new [CollectionDto].
  const factory CollectionDto({
    /// Unique identifier of the collection
    @Default('') String collection,

    /// Human-readable name
    @Default('') String name,

    /// Description of the collection
    @Default('') String description,

    ///  Link to the NFTs original image. This may be an HTTP url, SVG data,
    ///  or other directly embedded data.
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image_url') @Default('') String imageUrl,

    /// Owner of the collection
    @Default('') String owner,

    /// Safelist status
    @Default('') String safelistStatus,

    /// Category
    @Default('') String category,

    /// If the collection is disabled
    @Default(false) bool isDisabled,

    /// If the collection is NSFW
    @Default(false) bool isNsfw,

    /// Trait offers enabled or not
    @Default(false) bool? traitOffersEnabled,

    /// OpenSea URL
    @Default('') String openseaUrl,

    /// Project URL
    @Default('') String projectUrl,

    /// Wiki URL
    @Default('') String wikiUrl,

    /// Discord URL
    @Default('') String discordUrl,

    /// Telegram URL
    @Default('') String telegramUrl,

    /// Twitter username
    @Default('') String twitterUsername,

    /// Instagram username
    @Default('') String instagramUsername,

    /// Contract details
    @Default([]) List<ContractDto> contracts,
  }) = _CollectionDto;
  const CollectionDto._();

  /// Creates a [CollectionDto] from a map (parsed JSON).
  factory CollectionDto.fromJson(Map<String, dynamic> json) =>
      _$CollectionDtoFromJson(json);

  Collection toCollection() {
    return Collection(
      name: name,
      description: description,
      imagePath: imageUrl,
      contracts: contracts.map((dto) => dto.toContract()).toList(),
    );
  }
}

/// Represents contract details for a collection.
@freezed
class ContractDto with _$ContractDto {
  /// Creates a new [ContractDto].
  const factory ContractDto({
    /// Contract address
    @Default('') String address,

    /// Blockchain chain name
    @Default('') String chain,
  }) = _ContractDto;
  const ContractDto._();

  /// Creates a [ContractDto] from a map (parsed JSON).
  factory ContractDto.fromJson(Map<String, dynamic> json) =>
      _$ContractDtoFromJson(json);

  Contract toContract() {
    return Contract(
      address: address,
      chain: chain,
    );
  }
}
