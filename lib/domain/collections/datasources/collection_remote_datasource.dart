import 'package:dartz/dartz.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';
import 'package:glimmer_box/infrastructure/collections/dtos/collection_dto.dart';
import 'package:glimmer_box/infrastructure/collections/dtos/nft_dto.dart';

/// Interface for OpenSea remote data source
abstract class CollectionRemoteDataSource {
  /// Fetches OpenSea collections
  ///
  /// [chain] The blockchain on which to filter the results.
  ///
  /// [limit] determines the number of collections to return which must be
  /// between 1 and 100.
  ///
  /// [next] is an optional cursor for the next page of results, which gets
  /// returned from a previous request.
  ///
  /// Returns [Either] with [OpenSeaApiFailure] for failures
  /// and [CollectionsResponseDto] for successful retrieval.
  Future<Either<OpenSeaApiFailure, CollectionsResponseDto>> getCollections({
    required String chain,
    int limit = 100,
    String next = '',
  });

  /// Fetches OpenSea NFTs by [chain] and by contract
  ///
  /// [chain] The blockchain on which to filter the results.
  ///
  /// [address] is the unique public blockchain identifier for the contract
  /// or wallet.
  ///
  /// [limit] determines the number of collections to return which must be
  /// between 1 and 50.
  ///
  /// [next] is an optional cursor for the next page of results, which gets
  /// returned from a previous request.
  ///
  /// Returns [Either] with [OpenSeaApiFailure] for failures
  /// and [CollectionsResponseDto] for successful retrieval.
  Future<Either<OpenSeaApiFailure, NftsResponseDto>> getNfts({
    required String chain,
    required String address,
    int limit = 50,
    String next = '',
  });

  /// Fetches OpenSea NFT details by [chain] and by contract
  ///
  /// [chain] The blockchain on which to filter the results.
  ///
  /// [address] is the unique public blockchain identifier for the contract
  /// or wallet.
  ///
  /// [identifier] The NFT token id.
  ///
  /// Returns [Either] with [OpenSeaApiFailure] for failures
  /// and [CollectionsResponseDto] for successful retrieval.
  Future<Either<OpenSeaApiFailure, NftDto>> getNftDetails({
    required String chain,
    required String address,
    required String identifier,
  });
}
