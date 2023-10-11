// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionsResponseDtoImpl _$$CollectionsResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionsResponseDtoImpl(
      collections: (json['collections'] as List<dynamic>?)
              ?.map((e) => CollectionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CollectionDto>[],
      next: json['next'] as String? ?? '',
    );

Map<String, dynamic> _$$CollectionsResponseDtoImplToJson(
        _$CollectionsResponseDtoImpl instance) =>
    <String, dynamic>{
      'collections': instance.collections,
      'next': instance.next,
    };

_$CollectionDtoImpl _$$CollectionDtoImplFromJson(Map<String, dynamic> json) =>
    _$CollectionDtoImpl(
      collection: json['collection'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      owner: json['owner'] as String? ?? '',
      safelistStatus: json['safelistStatus'] as String? ?? '',
      category: json['category'] as String? ?? '',
      isDisabled: json['isDisabled'] as bool? ?? false,
      isNsfw: json['isNsfw'] as bool? ?? false,
      traitOffersEnabled: json['traitOffersEnabled'] as bool? ?? false,
      openseaUrl: json['openseaUrl'] as String? ?? '',
      projectUrl: json['projectUrl'] as String? ?? '',
      wikiUrl: json['wikiUrl'] as String? ?? '',
      discordUrl: json['discordUrl'] as String? ?? '',
      telegramUrl: json['telegramUrl'] as String? ?? '',
      twitterUsername: json['twitterUsername'] as String? ?? '',
      instagramUsername: json['instagramUsername'] as String? ?? '',
      contracts: (json['contracts'] as List<dynamic>?)
              ?.map((e) => ContractDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CollectionDtoImplToJson(_$CollectionDtoImpl instance) =>
    <String, dynamic>{
      'collection': instance.collection,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'owner': instance.owner,
      'safelistStatus': instance.safelistStatus,
      'category': instance.category,
      'isDisabled': instance.isDisabled,
      'isNsfw': instance.isNsfw,
      'traitOffersEnabled': instance.traitOffersEnabled,
      'openseaUrl': instance.openseaUrl,
      'projectUrl': instance.projectUrl,
      'wikiUrl': instance.wikiUrl,
      'discordUrl': instance.discordUrl,
      'telegramUrl': instance.telegramUrl,
      'twitterUsername': instance.twitterUsername,
      'instagramUsername': instance.instagramUsername,
      'contracts': instance.contracts,
    };

_$ContractDtoImpl _$$ContractDtoImplFromJson(Map<String, dynamic> json) =>
    _$ContractDtoImpl(
      address: json['address'] as String? ?? '',
      chain: json['chain'] as String? ?? '',
    );

Map<String, dynamic> _$$ContractDtoImplToJson(_$ContractDtoImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'chain': instance.chain,
    };
