import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';
import 'package:glimmer_box/infrastructure/collections/datasources/collection_remote_datasource_impl.dart';
import 'package:glimmer_box/infrastructure/collections/dtos/collection_dto.dart';
import 'package:glimmer_box/infrastructure/collections/dtos/nft_dto.dart';
import 'package:glimmer_box/infrastructure/collections/endpoints/collections_endpoint.dart';
import 'package:glimmer_box/infrastructure/collections/endpoints/nfts_endpoint.dart';
import 'package:glimmer_box/infrastructure/logger/logger.dart';
import 'package:mocktail/mocktail.dart';

class MockCollectionsEndpoint extends Mock implements CollectionsEndpoint {}

class MockNftsEndpoint extends Mock implements NftsEndpoint {}

void main() {
  late CollectionRemoteDataSourceImpl dataSource;
  late MockCollectionsEndpoint collectionsEndpoint;
  late MockNftsEndpoint nftsEndpoint;

  setUp(() {
    collectionsEndpoint = MockCollectionsEndpoint();
    nftsEndpoint = MockNftsEndpoint();

    dataSource = CollectionRemoteDataSourceImpl(
      collectionsEndpoint,
      nftsEndpoint,
      appLogger,
    );
  });

  group('Get Collections', () {
    final mockResponseJson = {
      'collections': [
        {
          'collection': 'mysterious-monster-2',
          'name': 'Mysterious monster',
          'description': '',
          'image_url': '',
          'banner_image_url': '',
          'owner': '0x737420dcdf304b83d985cc52fc403640cd8af060',
          'safelist_status': 'not_requested',
          'category': '',
          'is_disabled': false,
          'is_nsfw': false,
          'trait_offers_enabled': false,
          'opensea_url': 'https://opensea.io/collection/mysterious-monster-2',
          'project_url': '',
          'wiki_url': '',
          'discord_url': '',
          'telegram_url': '',
          'twitter_username': '',
          'instagram_username': '',
          'contracts': [
            {
              'address': '0x7eaf2170b5b3102f309f60ccd7d48ba85c04ffad',
              'chain': 'ethereum',
            }
          ],
        },
        {
          'collection': 'shell-15',
          'name': 'Shell',
          'description': 'Shell',
          'image_url':
              'https://i.seadn.io/s/raw/files/3e9d0d09879e448da90d57a77456139f.jpg?w=500&auto=format',
          'banner_image_url': '',
          'owner': '0xb6d49678e09a5d9e436a36b8ef76e822bb2c44fd',
          'safelist_status': 'not_requested',
          'category': '',
          'is_disabled': false,
          'is_nsfw': false,
          'trait_offers_enabled': false,
          'opensea_url': 'https://opensea.io/collection/shell-15',
          'project_url': '',
          'wiki_url': '',
          'discord_url': '',
          'telegram_url': '',
          'twitter_username': '',
          'instagram_username': '',
          'contracts': [
            {
              'address': '0x1278c02837613d5038c0bf9163a40b687b5d6438',
              'chain': 'zora',
            }
          ],
        }
      ],
      'next': 'LXBrPTMwNzg1MzYz',
    };

    final mockCollectionsResponseDto =
        CollectionsResponseDto.fromJson(mockResponseJson);

    test('should return Collections when everything works', () async {
      // Arrange
      when(
        () => collectionsEndpoint.getCollections(
          apiKey: any(named: 'apiKey'),
          chainIdentifier: any(named: 'chainIdentifier'),
          limit: any(named: 'limit'),
          next: any(named: 'next'),
        ),
      ).thenAnswer((_) async => mockCollectionsResponseDto);

      // Act
      final result = await dataSource.getCollections(chain: 'someChain');

      // Assert
      result.fold(
        (l) => fail('Collections not fetched successfully'),
        (r) => expect(r, equals(mockCollectionsResponseDto)),
      );
    });

    // Test cases for each failure type
    void runExceptionTest(
      DioExceptionType type,
      OpenSeaApiFailure expectedFailure,
    ) {
      test(
          'should return Left with $expectedFailure when DioException'
          ' occurs with type $type', () async {
        // Arrange
        when(
          () => collectionsEndpoint.getCollections(
            apiKey: any(named: 'apiKey'),
            chainIdentifier: any(named: 'chainIdentifier'),
            limit: any(named: 'limit'),
            next: any(named: 'next'),
          ),
        ).thenThrow(
          DioException(
            type: type,
            requestOptions: RequestOptions(),
          ),
        );

        // Act
        final result = await dataSource.getCollections(chain: 'anyChain');

        // Assert
        expect(
          result,
          equals(
            Left<OpenSeaApiFailure, CollectionsResponseDto>(
              expectedFailure,
            ),
          ),
        );
      });
    }

    runExceptionTest(
      DioExceptionType.connectionTimeout,
      const OpenSeaApiFailure.connectionTimeout(),
    );
    runExceptionTest(
      DioExceptionType.sendTimeout,
      const OpenSeaApiFailure.sendTimeout(),
    );
    runExceptionTest(
      DioExceptionType.receiveTimeout,
      const OpenSeaApiFailure.receiveTimeout(),
    );
    runExceptionTest(
      DioExceptionType.badCertificate,
      const OpenSeaApiFailure.badCertificate(),
    );
    runExceptionTest(
      DioExceptionType.badResponse,
      const OpenSeaApiFailure.badResponse(message: 'Unknown'),
    );
    runExceptionTest(DioExceptionType.cancel, const OpenSeaApiFailure.cancel());
    runExceptionTest(
      DioExceptionType.connectionError,
      const OpenSeaApiFailure.connectionError(),
    );
    runExceptionTest(
      DioExceptionType.unknown,
      const OpenSeaApiFailure.unknown(),
    );

    test(
        'should return Left with OpenSeaApiFailure.unknown() when any'
        ' other exception occurs', () async {
      // Arrange
      when(
        () => collectionsEndpoint.getCollections(
          apiKey: any(named: 'apiKey'),
          chainIdentifier: any(named: 'chainIdentifier'),
          limit: any(named: 'limit'),
          next: any(named: 'next'),
        ),
      ).thenThrow(Exception());

      // Act
      final result = await dataSource.getCollections(chain: 'anyChain');

      // Assert
      expect(
        result,
        equals(
          const Left<OpenSeaApiFailure, CollectionsResponseDto>(
            OpenSeaApiFailure.unknown(),
          ),
        ),
      );
    });
  });

  group('Get NFTs', () {
    final mockResponseJson = {
      'nfts': [
        {
          'identifier': '9657',
          'collection': 'deadmigos-official',
          'contract': '0xd29f5f02f5ffcd102faf467f2f236c601830780d',
          'token_standard': 'erc721',
          'name': 'Deadmigos #9657',
          'description': 'Dreamed of moonshots but awoke to a capitulation. 🌑',
          'image_url':
              'https://i.seadn.io/s/raw/files/0b2a60e91c576f2a8567975d4d49f2a5.png?w=500&auto=format',
          'metadata_url':
              'ipfs://bafybeiczl3yhsy7ob5vgewfsb4nqhdqxwofw5oe5hd2aw6vo4acblbtyqm/9657.json',
          'created_at': ' ',
          'updated_at': '2023-09-28T03:02:57.478321',
          'is_disabled': false,
          'is_nsfw': false,
        },
        {
          'identifier': '9654',
          'collection': 'deadmigos-official',
          'contract': '0xd29f5f02f5ffcd102faf467f2f236c601830780d',
          'token_standard': 'erc721',
          'name': 'Deadmigos #9654',
          'description': 'Dreamed of moonshots but awoke to a capitulation. 🌑',
          'image_url':
              'https://i.seadn.io/s/raw/files/614a76a110e8576cb02692026b706dcc.png?w=500&auto=format',
          'metadata_url':
              'ipfs://bafybeiczl3yhsy7ob5vgewfsb4nqhdqxwofw5oe5hd2aw6vo4acblbtyqm/9654.json',
          'created_at': ' ',
          'updated_at': '2023-09-28T19:19:19.848508',
          'is_disabled': false,
          'is_nsfw': false,
        },
        {
          'identifier': '9663',
          'collection': 'deadmigos-official',
          'contract': '0xd29f5f02f5ffcd102faf467f2f236c601830780d',
          'token_standard': 'erc721',
          'name': 'Deadmigos #9663',
          'description': 'Dreamed of moonshots but awoke to a capitulation. 🌑',
          'image_url':
              'https://i.seadn.io/s/raw/files/5d0f26cdc653bbffc7c360c88f5d76b9.png?w=500&auto=format',
          'metadata_url':
              'ipfs://bafybeiczl3yhsy7ob5vgewfsb4nqhdqxwofw5oe5hd2aw6vo4acblbtyqm/9663.json',
          'created_at': ' ',
          'updated_at': '2023-09-30T04:04:56.609942',
          'is_disabled': false,
          'is_nsfw': false,
        },
        {
          'identifier': '9665',
          'collection': 'deadmigos-official',
          'contract': '0xd29f5f02f5ffcd102faf467f2f236c601830780d',
          'token_standard': 'erc721',
          'name': 'Deadmigos #9665',
          'description': 'Dreamed of moonshots but awoke to a capitulation. 🌑',
          'image_url':
              'https://i.seadn.io/s/raw/files/3ee091d5d3d2b579ff0a4e160e9c3587.png?w=500&auto=format',
          'metadata_url':
              'ipfs://bafybeiczl3yhsy7ob5vgewfsb4nqhdqxwofw5oe5hd2aw6vo4acblbtyqm/9665.json',
          'created_at': ' ',
          'updated_at': '2023-09-29T16:06:16.198982',
          'is_disabled': false,
          'is_nsfw': false,
        },
        {
          'identifier': '9659',
          'collection': 'deadmigos-official',
          'contract': '0xd29f5f02f5ffcd102faf467f2f236c601830780d',
          'token_standard': 'erc721',
          'name': 'Deadmigos #9659',
          'description': 'Dreamed of moonshots but awoke to a capitulation. 🌑',
          'image_url':
              'https://i.seadn.io/s/raw/files/fb05e56b81672609bc2546ba1537d757.png?w=500&auto=format',
          'metadata_url':
              'ipfs://bafybeiczl3yhsy7ob5vgewfsb4nqhdqxwofw5oe5hd2aw6vo4acblbtyqm/9659.json',
          'created_at': ' ',
          'updated_at': '2023-09-28T01:30:26.656795',
          'is_disabled': false,
          'is_nsfw': false,
        }
      ],
      'next': 'LXBrPTE1MTU0MTkzOTQ=',
    };

    final mockNftsResponseDto = NftsResponseDto.fromJson(mockResponseJson);

    test('should return NFTs when everything works', () async {
      // Arrange
      when(
        () => nftsEndpoint.getNfts(
          apiKey: any(named: 'apiKey'),
          chainIdentifier: any(named: 'chainIdentifier'),
          address: any(named: 'address'),
          limit: any(named: 'limit'),
          next: any(named: 'next'),
        ),
      ).thenAnswer((_) async => mockNftsResponseDto);

      // Act
      final result =
          await dataSource.getNfts(chain: 'someChain', address: 'someAddress');

      // Assert
      result.fold(
        (l) => fail('NFTs not fetched successfully'),
        (r) => expect(r, equals(mockNftsResponseDto)),
      );
    });

    test('should call NFT endpoint', () async {
      // Arrange
      const chain = 'someChain';
      const address = 'someAddress';

      when(
        () => nftsEndpoint.getNfts(
          apiKey: any(named: 'apiKey'),
          chainIdentifier: any(named: 'chainIdentifier'),
          address: any(named: 'address'),
          limit: any(named: 'limit'),
          next: any(named: 'next'),
        ),
      ).thenAnswer((_) async => mockNftsResponseDto);

      // Act
      await dataSource.getNfts(chain: chain, address: address);

      // Assert
      verify(
        () => nftsEndpoint.getNfts(
          apiKey: any(named: 'apiKey'),
          chainIdentifier: any(named: 'chainIdentifier'),
          address: any(named: 'address'),
          limit: any(named: 'limit'),
          next: any(named: 'next'),
        ),
      ).called(1);
    });

    // Test cases for each failure type
    void runExceptionTest(
      DioExceptionType type,
      OpenSeaApiFailure expectedFailure,
    ) {
      test(
          'should return Left with $expectedFailure when DioException'
          ' occurs with type $type', () async {
        // Arrange
        when(
          () => nftsEndpoint.getNfts(
            apiKey: any(named: 'apiKey'),
            chainIdentifier: any(named: 'chainIdentifier'),
            address: any(named: 'address'),
            limit: any(named: 'limit'),
            next: any(named: 'next'),
          ),
        ).thenThrow(
          DioException(
            type: type,
            requestOptions: RequestOptions(),
          ),
        );

        // Act
        final result =
            await dataSource.getNfts(chain: 'anyChain', address: 'anyAddress');

        // Assert
        expect(
          result,
          equals(
            Left<OpenSeaApiFailure, NftsResponseDto>(
              expectedFailure,
            ),
          ),
        );
      });
    }

    runExceptionTest(
      DioExceptionType.connectionTimeout,
      const OpenSeaApiFailure.connectionTimeout(),
    );
    runExceptionTest(
      DioExceptionType.sendTimeout,
      const OpenSeaApiFailure.sendTimeout(),
    );
    runExceptionTest(
      DioExceptionType.receiveTimeout,
      const OpenSeaApiFailure.receiveTimeout(),
    );
    runExceptionTest(
      DioExceptionType.badCertificate,
      const OpenSeaApiFailure.badCertificate(),
    );
    runExceptionTest(
      DioExceptionType.badResponse,
      const OpenSeaApiFailure.badResponse(message: 'Unknown'),
    );
    runExceptionTest(DioExceptionType.cancel, const OpenSeaApiFailure.cancel());
    runExceptionTest(
      DioExceptionType.connectionError,
      const OpenSeaApiFailure.connectionError(),
    );
    runExceptionTest(
      DioExceptionType.unknown,
      const OpenSeaApiFailure.unknown(),
    );

    test(
        'should return Left with OpenSeaApiFailure.unknown() when any'
        ' other exception occurs', () async {
      // Arrange
      when(
        () => nftsEndpoint.getNfts(
          apiKey: any(named: 'apiKey'),
          chainIdentifier: any(named: 'chainIdentifier'),
          address: any(named: 'address'),
          limit: any(named: 'limit'),
          next: any(named: 'next'),
        ),
      ).thenThrow(Exception());

      // Act
      final result = await dataSource.getCollections(chain: 'anyChain');

      // Assert
      expect(
        result,
        equals(
          const Left<OpenSeaApiFailure, CollectionsResponseDto>(
            OpenSeaApiFailure.unknown(),
          ),
        ),
      );
    });
  });
}
