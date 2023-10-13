import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/owner.dart';

part 'owner_dto.freezed.dart';
part 'owner_dto.g.dart';

/// DTO for OwnerModel, representing an owner
@freezed
class OwnerDto with _$OwnerDto {
  /// Default constructor
  const factory OwnerDto({
    /// The unique public blockchain identifier for the owner wallet
    @Default('') String address,

    /// The number of tokens owned
    @Default(0) int quantity,
  }) = _OwnerDto;

  const OwnerDto._();

  /// Creates an OwnerDto object from JSON
  factory OwnerDto.fromJson(Map<String, dynamic> json) =>
      _$OwnerDtoFromJson(json);

  Owner toOwner() {
    return Owner(address: address, quantity: quantity);
  }
}
