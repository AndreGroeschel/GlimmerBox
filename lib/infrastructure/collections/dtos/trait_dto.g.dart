// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trait_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TraitDtoImpl _$$TraitDtoImplFromJson(Map<String, dynamic> json) =>
    _$TraitDtoImpl(
      value: json['value'],
      traitType: json['traitType'] as String? ?? '',
      maxValue: json['maxValue'] as String? ?? '',
      traitCount: json['traitCount'] as int? ?? 0,
      order: json['order'] as int? ?? 0,
    );

Map<String, dynamic> _$$TraitDtoImplToJson(_$TraitDtoImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'traitType': instance.traitType,
      'maxValue': instance.maxValue,
      'traitCount': instance.traitCount,
      'order': instance.order,
    };
