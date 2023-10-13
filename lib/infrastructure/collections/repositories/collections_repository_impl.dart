import 'package:dartz/dartz.dart';
import 'package:glimmer_box/domain/collections/datasources/collection_remote_datasource.dart';
import 'package:glimmer_box/domain/collections/entities/collection_page.dart';
import 'package:glimmer_box/domain/collections/entities/nft_details.dart';
import 'package:glimmer_box/domain/collections/entities/nft_page.dart';
import 'package:glimmer_box/domain/collections/repositories/collection_repository.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CollectionRepository)
class CollectionsRepositoryImpl implements CollectionRepository {
  CollectionsRepositoryImpl({required this.collectionRemoteDataSource});
  final CollectionRemoteDataSource collectionRemoteDataSource;

  @override
  Future<Either<OpenSeaApiFailure, Stream<CollectionPage>>> getCollectionsPage({
    required String chainIdentifier,
    int limit = 100,
    String next = '',
  }) async {
    try {
      final response = await collectionRemoteDataSource.getCollections(
        chain: chainIdentifier,
        limit: limit,
        next: next,
      );

      return response.fold(
        Left.new,
        (collectionsResponseDto) {
          // Convert Dto to Domain and wrap it in a Stream
          final stream = Stream.value(collectionsResponseDto.toCollectionPage())
              .asBroadcastStream();
          return Right(stream);
        },
      );
    } catch (e) {
      return const Left(OpenSeaApiFailure.unknown());
    }
  }

  @override
  Future<Either<OpenSeaApiFailure, Stream<NftPage>>> getNftPage({
    required String chain,
    required String address,
    int limit = 50,
    String next = '',
  }) async {
    try {
      final response = await collectionRemoteDataSource.getNfts(
        chain: chain,
        address: address,
        limit: limit,
        next: next,
      );

      return response.fold(
        Left.new,
        (nftsResponseDto) {
          // Convert Dto to Domain and wrap it in a Stream
          final stream = Stream.value(nftsResponseDto.toNftPage());
          return Right(stream);
        },
      );
    } catch (e) {
      return const Left(OpenSeaApiFailure.unknown());
    }
  }

  @override
  Future<Either<OpenSeaApiFailure, Stream<NftDetails>>> getNftDetails({
    required String chain,
    required String address,
    required String identifier,
  }) async {
    try {
      final response = await collectionRemoteDataSource.getNftDetails(
        chain: chain,
        address: address,
        identifier: identifier,
      );

      return response.fold(
        Left.new,
        (nftDto) {
          // Convert Dto to Domain and wrap it in a Stream
          final stream = Stream.value(nftDto.toNftDetails());
          return Right(stream);
        },
      );
    } catch (e) {
      return const Left(OpenSeaApiFailure.unknown());
    }
  }
}
