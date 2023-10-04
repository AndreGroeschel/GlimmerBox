import 'package:dio/dio.dart' hide Headers;
import 'package:glimmer_box/infrastructure/collections/dtos/collection_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'collections_endpoint.g.dart';

/// Endpoint for OpenSea collections. Uses Retrofit for code generation
@RestApi(baseUrl: 'https://api.opensea.io/api/v2')
abstract class CollectionsEndpoint {
  factory CollectionsEndpoint(Dio dio, {String baseUrl}) = _CollectionsEndpoint;

  /// Performs a request to the OpenSea API to retrieve OpenSea collections
  /// [apiKey] is the authorization key
  ///
  /// [chainIdentifier] The blockchain on which the NFTs reside
  ///
  /// [limit] determines the number of collections to return which must be
  /// between 1 and 100.
  ///
  /// [next] is an optional cursor for the next page of results, which gets
  /// returned from a previous request.
  ///
  /// Returns a JSON with collections if successful or a JSON with error when an
  /// error occurred. See https://docs.opensea.io/reference/list_collections
  /// for more information
  @GET('/collections')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<CollectionsResponseDto> getCollections({
    @Header('X-API-KEY') required String apiKey,
    @Query('chain_identifier') required String chainIdentifier,
    @Query('limit') int limit = 100,
    @Query('next') String next = '',
  });
}
