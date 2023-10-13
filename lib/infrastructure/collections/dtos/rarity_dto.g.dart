// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rarity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RarityDtoImpl _$$RarityDtoImplFromJson(Map<String, dynamic> json) =>
    _$RarityDtoImpl(
      strategyId: json['strategyId'] as String? ?? '',
      strategyVersion: json['strategyVersion'] as String? ?? '',
      rank: json['rank'] as int? ?? 0,
      score: (json['score'] as num?)?.toDouble() ?? 0,
      calculatedAt: json['calculatedAt'] as String? ?? '',
      maxRank: json['maxRank'] as int? ?? 0,
      totalSupply: json['totalSupply'] as int? ?? 0,
      rankingFeatures: json['rankingFeatures'] as String? ?? '',
    );

Map<String, dynamic> _$$RarityDtoImplToJson(_$RarityDtoImpl instance) =>
    <String, dynamic>{
      'strategyId': instance.strategyId,
      'strategyVersion': instance.strategyVersion,
      'rank': instance.rank,
      'score': instance.score,
      'calculatedAt': instance.calculatedAt,
      'maxRank': instance.maxRank,
      'totalSupply': instance.totalSupply,
      'rankingFeatures': instance.rankingFeatures,
    };
