import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/domain/collections/datasources/collection_remote_datasource.dart';
import 'package:glimmer_box/domain/collections/entities/collection_page.dart';
import 'package:glimmer_box/domain/collections/entities/nft_details.dart';
import 'package:glimmer_box/domain/collections/entities/nft_page.dart';
import 'package:glimmer_box/domain/core/failures/open_sea_api_failure.dart';
import 'package:glimmer_box/infrastructure/collections/dtos/collection_dto.dart';
import 'package:glimmer_box/infrastructure/collections/dtos/nft_dto.dart';
import 'package:glimmer_box/infrastructure/collections/repositories/collections_repository_impl.dart';
import 'package:mocktail/mocktail.dart';

// Mocks
class MockCollectionRemoteDataSource extends Mock
    implements CollectionRemoteDataSource {}

void main() {
  late CollectionsRepositoryImpl repository;
  late MockCollectionRemoteDataSource mockCollectionRemoteDataSource;

  setUp(() {
    mockCollectionRemoteDataSource = MockCollectionRemoteDataSource();
    repository = CollectionsRepositoryImpl(
      collectionRemoteDataSource: mockCollectionRemoteDataSource,
    );
  });

  group('Get Collections', () {
    // Prepare test data

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

    // Mock data for a CollectionPage object.
    final mockCollectionPage = mockCollectionsResponseDto.toCollectionPage();

    test(
      'should return a Stream of CollectionPage when '
      'getCollectionsPage is successful',
      () async {
        // Arrange: Mock the behavior of dependencies
        when(
          () => mockCollectionRemoteDataSource.getCollections(
            chain: any(named: 'chain'),
            limit: any(named: 'limit'),
            next: any(named: 'next'),
          ),
        ).thenAnswer((_) async => Right(mockCollectionsResponseDto));

        // Act
        final result = await repository.getCollectionsPage(
          chainIdentifier: 'someChain',
          next: 'next',
        );

        // Assert
        result.fold(
          (l) => fail('Collections not fetched successfully'),
          (r) {
            expectLater(r, emits(mockCollectionPage));
          },
        );
      },
    );

    test(
      'should return OpenSeaApiFailure when getCollectionsPage is unsuccessful',
      () async {
        // Arrange: Mock the behavior of dependencies
        when(
          () => mockCollectionRemoteDataSource.getCollections(
            chain: any(named: 'chain'),
            limit: any(named: 'limit'),
            next: any(named: 'next'),
          ),
        ).thenAnswer((_) async => const Left(OpenSeaApiFailure.unknown()));

        // Act: Call the method under test
        final result = await repository.getCollectionsPage(
          chainIdentifier: 'someChain',
          next: 'next',
        );

        // Assert: Check the result
        expect(
          result,
          equals(
            const Left<OpenSeaApiFailure, Stream<CollectionPage>>(
              OpenSeaApiFailure.unknown(),
            ),
          ),
        );
      },
    );
  });

  group('Get NFTs', () {
    final mockResponseJson = {
      'nfts': [
        {
          'identifier': '0',
          'collection': '1000-usdt-reward-2836',
          'contract': '0xb1beffcf77cdd6085f574e47162eb66456b62cc1',
          'token_standard': 'erc1155',
          'name': '1,000 USDT Reward',
          'description':
              'You are eligible to claim 1,000 USDT reward. Claim your reward at https://get-tether.com/',
          'image_url':
              'https://i.seadn.io/s/raw/files/b3f643c0409ec71fc9e2ed546311769b.png?w=500&auto=format',
          'metadata_url': 'https://get-tether.com/usdt.json',
          'created_at': ' ',
          'updated_at': '2023-10-10T12:09:16.615685',
          'is_disabled': false,
          'is_nsfw': false,
        }
      ],
    };

    final mockNftsResponseDto = NftsResponseDto.fromJson(mockResponseJson);

    // Mock data for a CollectionPage object.
    final mockNftPage = mockNftsResponseDto.toNftPage();

    test(
      'should return a Stream of NftPage when getNftPage is successful',
      () async {
        // Arrange
        when(
          () => mockCollectionRemoteDataSource.getNfts(
            chain: any(named: 'chain'),
            address: any(named: 'address'),
            limit: any(named: 'limit'),
            next: any(named: 'next'),
          ),
        ).thenAnswer((_) async => Right(mockNftsResponseDto));

        // Act
        final result = await repository.getNftPage(
          chain: 'someChain',
          address: 'someAddress',
          next: 'next',
        );

        // Assert
        result.fold(
          (l) => fail('NFTs not fetched successfully'),
          (r) {
            expectLater(r, emits(mockNftPage));
          },
        );
      },
    );

    test(
      'should return OpenSeaApiFailure when getNftPage is unsuccessful',
      () async {
        // Arrange
        when(
          () => mockCollectionRemoteDataSource.getNfts(
            chain: any(named: 'chain'),
            address: any(named: 'address'),
            limit: any(named: 'limit'),
            next: any(named: 'next'),
          ),
        ).thenAnswer((_) async => const Left(OpenSeaApiFailure.unknown()));

        // Act
        final result = await repository.getNftPage(
          chain: 'someChain',
          address: 'someAddress',
          next: 'next',
        );

        // Assert
        expect(
          result,
          equals(
            const Left<OpenSeaApiFailure, Stream<NftPage>>(
              OpenSeaApiFailure.unknown(),
            ),
          ),
        );
      },
    );
  });

  group('Get NFT Details', () {
    final mockNftDetailsJson = {
      'nft': {
        'identifier': '1',
        'collection': 'deadmigos-official',
        'contract': '0xd29f5f02f5ffcd102faf467f2f236c601830780d',
        'token_standard': 'erc721',
        'name': 'Deadmigos #1',
        'description': 'Dreamed of moonshots but awoke to a capitulation. 🌑',
        'image_url':
            'https://ipfs.io/ipfs/bafybeiexo7c767mzz7k2oovxzdcem25zfn2gxvxpkegszy2ngsm3zb6ib4/1.png',
        'metadata_url':
            'ipfs://bafybeiczl3yhsy7ob5vgewfsb4nqhdqxwofw5oe5hd2aw6vo4acblbtyqm/1.json',
        'created_at': ' ',
        'updated_at': '2023-09-28T00:11:24.828700',
        'is_disabled': false,
        'is_nsfw': false,
        'animation_url': '',
        'is_suspicious': false,
        'creator': '0x0563e643132578f7d53e94556373b95c3c4f9b45',
        'traits': [
          {
            'trait_type': 'Neck',
            'display_type': null,
            'max_value': null,
            'trait_count': 0,
            'order': null,
            'value': 'Gold Chain',
          },
          {
            'trait_type': 'Frankenstein',
            'display_type': null,
            'max_value': null,
            'trait_count': 0,
            'order': null,
            'value': 'Frankenstein',
          },
          {
            'trait_type': 'Clothes',
            'display_type': null,
            'max_value': null,
            'trait_count': 0,
            'order': null,
            'value': 'WIzard',
          },
          {
            'trait_type': 'Hat',
            'display_type': null,
            'max_value': null,
            'trait_count': 0,
            'order': null,
            'value': 'Halo',
          },
          {
            'trait_type': 'Accessories',
            'display_type': null,
            'max_value': null,
            'trait_count': 0,
            'order': null,
            'value': 'Skull On A Stick',
          }
        ],
        'owners': [
          {
            'address': '0x0563e643132578f7d53e94556373b95c3c4f9b45',
            'quantity': 1,
          }
        ],
        'rarity': {
          'strategy_id': null,
          'strategy_version': null,
          'rank': 2827,
          'score': null,
          'calculated_at': '',
          'max_rank': null,
          'tokens_scored': 0,
          'ranking_features': null,
        },
      },
    };

    final mockNftDetailsResponseDto =
        NftWrapperDto.fromJson(mockNftDetailsJson).nft;

    final nftDetail = mockNftDetailsResponseDto.toNftDetails();

    test(
      'should return a Stream of NftDetails when getNftDetails is successful',
      () async {
        // Arrange
        when(
          () => mockCollectionRemoteDataSource.getNftDetails(
            chain: any(named: 'chain'),
            address: any(named: 'address'),
            identifier: any(named: 'identifier'),
          ),
        ).thenAnswer((_) async => Right(mockNftDetailsResponseDto));

        // Act
        final result = await repository.getNftDetails(
          chain: 'someChain',
          address: 'someAddress',
          identifier: 'someIdentifier',
        );

        // Assert
        result.fold(
          (l) => fail('NFTs not fetched successfully'),
          (r) {
            expectLater(r, emits(nftDetail));
          },
        );
      },
    );

    test(
      'should return OpenSeaApiFailure when getNftDetails is unsuccessful',
      () async {
        // Arrange
        when(
          () => mockCollectionRemoteDataSource.getNftDetails(
            chain: any(named: 'chain'),
            address: any(named: 'address'),
            identifier: any(named: 'identifier'),
          ),
        ).thenAnswer((_) async => const Left(OpenSeaApiFailure.unknown()));

        // Act
        final result = await repository.getNftDetails(
          chain: 'someChain',
          address: 'someAddress',
          identifier: 'identifier',
        );

        // Assert
        expect(
          result,
          equals(
            const Left<OpenSeaApiFailure, Stream<NftDetails>>(
              OpenSeaApiFailure.unknown(),
            ),
          ),
        );
      },
    );
  });
}
