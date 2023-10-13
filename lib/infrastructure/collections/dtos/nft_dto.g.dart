// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NftDtoImpl _$$NftDtoImplFromJson(Map<String, dynamic> json) => _$NftDtoImpl(
      identifier: json['identifier'] as String? ?? '',
      collection: json['collection'] as String? ?? '',
      contract: json['contract'] as String? ?? '',
      tokenStandard: json['tokenStandard'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      metadataUrl: json['metadataUrl'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      isDisabled: json['isDisabled'] as bool? ?? false,
      isNsfw: json['isNsfw'] as bool? ?? false,
      animationUrl: json['animationUrl'] as String? ?? '',
      isSuspicious: json['isSuspicious'] as bool? ?? false,
      creator: json['creator'] as String? ?? '',
      owners: (json['owners'] as List<dynamic>?)
              ?.map((e) => OwnerDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      traits: (json['traits'] as List<dynamic>?)
              ?.map((e) => TraitDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      rarity: json['rarity'] == null
          ? null
          : RarityDto.fromJson(json['rarity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NftDtoImplToJson(_$NftDtoImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'collection': instance.collection,
      'contract': instance.contract,
      'tokenStandard': instance.tokenStandard,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'metadataUrl': instance.metadataUrl,
      'updatedAt': instance.updatedAt,
      'isDisabled': instance.isDisabled,
      'isNsfw': instance.isNsfw,
      'animationUrl': instance.animationUrl,
      'isSuspicious': instance.isSuspicious,
      'creator': instance.creator,
      'owners': instance.owners,
      'traits': instance.traits,
      'rarity': instance.rarity,
    };

_$NftsResponseDtoImpl _$$NftsResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NftsResponseDtoImpl(
      nfts: (json['nfts'] as List<dynamic>?)
              ?.map((e) => NftDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <NftDto>[],
      next: json['next'] as String? ?? '',
    );

Map<String, dynamic> _$$NftsResponseDtoImplToJson(
        _$NftsResponseDtoImpl instance) =>
    <String, dynamic>{
      'nfts': instance.nfts,
      'next': instance.next,
    };

_$NftWrapperDtoImpl _$$NftWrapperDtoImplFromJson(Map<String, dynamic> json) =>
    _$NftWrapperDtoImpl(
      nft: NftDto.fromJson(json['nft'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NftWrapperDtoImplToJson(_$NftWrapperDtoImpl instance) =>
    <String, dynamic>{
      'nft': instance.nft,
    };
