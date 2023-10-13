import 'package:dio/dio.dart' hide Headers;
import 'package:glimmer_box/infrastructure/collections/dtos/nft_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'nfts_endpoint.g.dart';

/// Endpoint for OpenSea NFTs. Uses Retrofit for code generation
@RestApi(baseUrl: 'https://api.opensea.io/api/v2')
abstract class NftsEndpoint {
  factory NftsEndpoint(Dio dio, {String baseUrl}) = _NftsEndpoint;

  /// Performs a request to the OpenSea API to retrieve OpenSea NFTs
  /// [apiKey] is the authorization key
  ///
  /// [chainIdentifier] The blockchain on which the NFTs reside
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
  /// Returns a JSON with NFTs if successful or a JSON with error when an
  /// error occurred. See https://docs.opensea.io/reference/list_collections
  /// for more information
  @GET('/chain/{chainIdentifier}/contract/{address}/nfts')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<NftsResponseDto> getNfts({
    @Header('X-API-KEY') required String apiKey,
    @Path('chainIdentifier') required String chainIdentifier,
    @Path('address') required String address,
    @Query('limit') int limit = 50,
    @Query('next') String next = '',
  });
}
