import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:glimmer_box/domain/collections/datasources/collection_remote_datasource.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';
import 'package:glimmer_box/infrastructure/collections/dtos/collection_dto.dart';
import 'package:glimmer_box/infrastructure/collections/dtos/nft_dto.dart';
import 'package:glimmer_box/infrastructure/collections/endpoints/collections_endpoint.dart';
import 'package:glimmer_box/infrastructure/collections/endpoints/nft_details_endpoint.dart';
import 'package:glimmer_box/infrastructure/collections/endpoints/nfts_endpoint.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: CollectionRemoteDataSource)
class CollectionRemoteDataSourceImpl implements CollectionRemoteDataSource {
  CollectionRemoteDataSourceImpl(
    this._collectionsEndpoint,
    this._nftsEndpoint,
    this._nftDetailsEndpoint,
    this._logger,
  );

  final CollectionsEndpoint _collectionsEndpoint;
  final NftsEndpoint _nftsEndpoint;
  final NftDetailsEndpoint _nftDetailsEndpoint;
  final Logger _logger;

  @override
  Future<Either<OpenSeaApiFailure, CollectionsResponseDto>> getCollections({
    required String chain,
    int limit = 100,
    String next = '',
  }) async {
    try {
      final response = await _collectionsEndpoint.getCollections(
        apiKey: const String.fromEnvironment('OPENSEA_API_KEY'),
        chainIdentifier: chain,
        limit: limit,
        next: next,
      );
      _logger.d(response);
      return Right<OpenSeaApiFailure, CollectionsResponseDto>(response);
    } catch (exception) {
      if (exception.runtimeType == DioException) {
        switch ((exception as DioException).type) {
          case DioExceptionType.connectionTimeout:
            return const Left(OpenSeaApiFailure.connectionTimeout());
          case DioExceptionType.sendTimeout:
            return const Left(OpenSeaApiFailure.sendTimeout());
          case DioExceptionType.receiveTimeout:
            return const Left(OpenSeaApiFailure.receiveTimeout());
          case DioExceptionType.badCertificate:
            return const Left(OpenSeaApiFailure.badCertificate());
          case DioExceptionType.badResponse:
            if (exception.response?.statusMessage == 'Unauthorized') {
              return const Left(OpenSeaApiFailure.invalidApiKey());
            } else {
              return Left(
                OpenSeaApiFailure.badResponse(
                  message: exception.response?.statusMessage ?? 'Unknown',
                ),
              );
            }
          case DioExceptionType.cancel:
            return const Left(OpenSeaApiFailure.cancel());
          case DioExceptionType.connectionError:
            return const Left(OpenSeaApiFailure.connectionError());
          case DioExceptionType.unknown:
            return const Left(OpenSeaApiFailure.unknown());
        }
      }
      return const Left(OpenSeaApiFailure.unknown());
    }
  }

  @override
  Future<Either<OpenSeaApiFailure, NftsResponseDto>> getNfts({
    required String chain,
    required String address,
    int limit = 50,
    String next = '',
  }) async {
    try {
      final response = await _nftsEndpoint.getNfts(
        apiKey: const String.fromEnvironment(
          'OPENSEA_API_KEY',
          defaultValue: 'default key',
        ),
        chainIdentifier: chain,
        address: address,
        limit: limit,
        next: next,
      );
      _logger.i(response);
      return Right<OpenSeaApiFailure, NftsResponseDto>(response);
    } catch (exception) {
      if (exception.runtimeType == DioException) {
        switch ((exception as DioException).type) {
          case DioExceptionType.connectionTimeout:
            return const Left(OpenSeaApiFailure.connectionTimeout());
          case DioExceptionType.sendTimeout:
            return const Left(OpenSeaApiFailure.sendTimeout());
          case DioExceptionType.receiveTimeout:
            return const Left(OpenSeaApiFailure.receiveTimeout());
          case DioExceptionType.badCertificate:
            return const Left(OpenSeaApiFailure.badCertificate());
          case DioExceptionType.badResponse:
            return Left(
              OpenSeaApiFailure.badResponse(
                message: exception.response?.statusMessage ?? 'Unknown',
              ),
            );
          case DioExceptionType.cancel:
            return const Left(OpenSeaApiFailure.cancel());
          case DioExceptionType.connectionError:
            return const Left(OpenSeaApiFailure.connectionError());
          case DioExceptionType.unknown:
            return const Left(OpenSeaApiFailure.unknown());
        }
      }
      return const Left(OpenSeaApiFailure.unknown());
    }
  }

  @override
  Future<Either<OpenSeaApiFailure, NftDto>> getNftDetails({
    required String chain,
    required String address,
    required String identifier,
  }) async {
    try {
      final response = await _nftDetailsEndpoint.getNft(
        apiKey: const String.fromEnvironment(
          'OPENSEA_API_KEY',
          defaultValue: 'default key',
        ),
        chainIdentifier: chain,
        address: address,
        identifier: identifier,
      );
      _logger.i(response);
      return Right<OpenSeaApiFailure, NftDto>(response.nft);
    } catch (exception) {
      if (exception.runtimeType == DioException) {
        switch ((exception as DioException).type) {
          case DioExceptionType.connectionTimeout:
            return const Left(OpenSeaApiFailure.connectionTimeout());
          case DioExceptionType.sendTimeout:
            return const Left(OpenSeaApiFailure.sendTimeout());
          case DioExceptionType.receiveTimeout:
            return const Left(OpenSeaApiFailure.receiveTimeout());
          case DioExceptionType.badCertificate:
            return const Left(OpenSeaApiFailure.badCertificate());
          case DioExceptionType.badResponse:
            return Left(
              OpenSeaApiFailure.badResponse(
                message: exception.response?.statusMessage ?? 'Unknown',
              ),
            );
          case DioExceptionType.cancel:
            return const Left(OpenSeaApiFailure.cancel());
          case DioExceptionType.connectionError:
            return const Left(OpenSeaApiFailure.connectionError());
          case DioExceptionType.unknown:
            return const Left(OpenSeaApiFailure.unknown());
        }
      }
      return const Left(OpenSeaApiFailure.unknown());
    }
  }
}
