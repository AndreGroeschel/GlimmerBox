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
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      isDisabled: json['isDisabled'] as bool? ?? false,
      isNsfw: json['isNsfw'] as bool? ?? false,
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
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isDisabled': instance.isDisabled,
      'isNsfw': instance.isNsfw,
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
