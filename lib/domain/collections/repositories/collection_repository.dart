import 'package:dartz/dartz.dart';
import 'package:glimmer_box/domain/collections/entities/collection_page.dart';
import 'package:glimmer_box/domain/collections/entities/nft_details.dart';
import 'package:glimmer_box/domain/collections/entities/nft_page.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';

abstract class CollectionRepository {
  /// Fetches a paginated list of OpenSea collections as a stream enabling
  /// real-time updates to be reflected in the UI as data arrives or changes.
  ///
  /// - Parameters:
  ///   - [chainIdentifier]: Specifies the blockchain network to filter the
  ///     collections.
  ///     For example, you might pass "ethereum" to only get collections
  ///     based on the Ethereum network.
  ///
  ///   - [limit]: An integer value that determines the maximum number of
  ///     collections to return in a single page.
  ///     The limit must be between 1 and 100, inclusive.
  ///
  ///   - [next]: An optional cursor to the next set of results.
  ///     This is used for pagination and is provided by the OpenSea API in the
  ///     response of a previous.
  ///     If not provided, the stream starts from the first page.
  ///
  /// - Returns: A stream of [CollectionPage]
  ///
  /// - Example:
  /// ```dart
  /// final collectionsStream = getCollectionsPage(
  ///   chainIdentifier: "ethereum",
  ///   limit: 50,
  /// );
  /// ```
  Future<Either<OpenSeaApiFailure, Stream<CollectionPage>>> getCollectionsPage({
    required String chainIdentifier,
    int limit = 100,
    String next = '',
  });

  /// Fetches a paginated list of OpenSea NFTs as a stream enabling
  /// real-time updates to be reflected in the UI as data arrives or changes.
  ///
  /// - Parameters:
  ///   - [chain]: The blockchain network to filter the NFTs. For example, you
  ///     might specify "ethereum" for NFTs on the Ethereum network.
  ///
  ///   - [address]: The unique public blockchain identifier for the smart
  ///     contract or wallet. Typically the contract's address.
  ///
  ///   - [limit]: An integer defining the max number of NFTs per page. Must be
  ///     between 1 and 50, inclusive. Default is 50.
  ///
  ///   - [next]: Optional cursor for the next set of results, useful for
  ///     pagination. Provided by a preceding query's API response.
  ///
  /// - Returns: A stream of [NftPage]
  ///
  /// - Example:
  /// ```dart
  /// final nftStream = getNftPage(
  ///   chain: "ethereum",
  ///   address: "0x1234",
  ///   limit: 20,
  /// );
  /// ```
  ///
  Future<Either<OpenSeaApiFailure, Stream<NftPage>>> getNftPage({
    required String chain,
    required String address,
    int limit = 50,
    String next = '',
  });

  /// Fetches a NFT details as a stream enabling
  /// real-time updates to be reflected in the UI as data arrives or changes.
  ///
  /// - Parameters:
  ///   - [chain]: The blockchain network to filter the NFTs. For example, you
  ///     might specify "ethereum" for NFTs on the Ethereum network.
  ///
  ///   - [address]: The unique public blockchain identifier for the smart
  ///     contract or wallet. Typically the contract's address.
  ///
  ///   - [identifier]: The NFT token id.
  ///
  /// - Returns: A stream of [NftDetails]
  ///
  /// - Example:
  /// ```dart
  /// final nftStream = getNftDetails(
  ///   chain: "ethereum",
  ///   address: "0x1234",
  ///   identifier: 1,
  /// );
  /// ```
  ///
  Future<Either<OpenSeaApiFailure, Stream<NftDetails>>> getNftDetails({
    required String chain,
    required String address,
    required String identifier,
  });
}
