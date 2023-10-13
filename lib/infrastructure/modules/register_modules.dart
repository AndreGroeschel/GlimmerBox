import 'package:dio/dio.dart';
import 'package:glimmer_box/infrastructure/collections/endpoints/collections_endpoint.dart';
import 'package:glimmer_box/infrastructure/collections/endpoints/nft_details_endpoint.dart';
import 'package:glimmer_box/infrastructure/collections/endpoints/nfts_endpoint.dart';
import 'package:glimmer_box/infrastructure/logger/dio_logging_interceptor.dart';
import 'package:glimmer_box/infrastructure/logger/logger.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// Registers modules for dependency injection
@module
abstract class RegisterModule {
  @lazySingleton
  Logger get logger => appLogger;

  /// Dio Http client for Dart
  @lazySingleton
  Dio get dio {
    final dio = Dio();
    dio.interceptors.add(DioLoggingInterceptor(logger: logger));
    return dio;
  }

  @lazySingleton
  CollectionsEndpoint getCollectionEndpoint(
    Dio dio,
  ) =>
      CollectionsEndpoint(dio);

  @lazySingleton
  NftsEndpoint getNftsEndpoint(
    Dio dio,
  ) =>
      NftsEndpoint(dio);

  @lazySingleton
  NftDetailsEndpoint getNftDetailsEndpoint(
    Dio dio,
  ) =>
      NftDetailsEndpoint(dio);
}
