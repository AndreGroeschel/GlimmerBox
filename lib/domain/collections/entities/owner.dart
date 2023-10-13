import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner.freezed.dart';

/// Entity representing owner data
@freezed
class Owner with _$Owner {
  /// Default constructor
  const factory Owner({
    /// The unique public blockchain identifier for the owner wallet
    @Default('') String address,

    /// The number of tokens owned
    @Default(0) int quantity,
  }) = _Owner;
}
