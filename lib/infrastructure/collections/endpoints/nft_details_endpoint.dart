import 'package:dio/dio.dart' hide Headers;
import 'package:glimmer_box/infrastructure/collections/dtos/nft_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'nft_details_endpoint.g.dart';

/// Endpoint for OpenSea NFTs. Get metadata, traits, ownership information,
/// and rarity for a single NFT. Uses Retrofit for code generation
@RestApi(baseUrl: 'https://api.opensea.io/api/v2')
abstract class NftDetailsEndpoint {
  factory NftDetailsEndpoint(Dio dio, {String baseUrl}) = _NftDetailsEndpoint;

  /// Performs a request to the OpenSea API to retrieve OpenSea NFTs
  /// [apiKey] is the authorization key
  ///
  /// [chainIdentifier] The blockchain on which the NFTs reside
  ///
  /// [address] is the unique public blockchain identifier for the contract
  /// or wallet.
  ///
  /// [identifier] The NFT token id.
  ///
  /// Returns a JSON with NFTs if successful or a JSON with error when an
  /// error occurred. See https://docs.opensea.io/reference/list_collections
  /// for more information
  ///
  //--url https://api.opensea.io/api/v2/chain/optimism/contract/0x90634aa9aed4513dfef9ead1015f021bdf596930/nfts/1 \
  @GET('/chain/{chainIdentifier}/contract/{address}/nfts/{identifier}')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<NftWrapperDto> getNft({
    @Header('X-API-KEY') required String apiKey,
    @Path('chainIdentifier') required String chainIdentifier,
    @Path('address') required String address,
    @Path('identifier') required String identifier,
  });
}
