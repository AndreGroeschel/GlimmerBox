// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerDtoImpl _$$OwnerDtoImplFromJson(Map<String, dynamic> json) =>
    _$OwnerDtoImpl(
      address: json['address'] as String? ?? '',
      quantity: json['quantity'] as int? ?? 0,
    );

Map<String, dynamic> _$$OwnerDtoImplToJson(_$OwnerDtoImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'quantity': instance.quantity,
    };
