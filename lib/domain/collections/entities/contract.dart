import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract.freezed.dart';

// Holds contract details
@freezed
class Contract with _$Contract {
  const factory Contract({
    //The unique public blockchain identifier, address, for the contract.
    @Default('') String address,
    // The chain on which the contract exists
    @Default('') String chain,
  }) = _Contract;
}
