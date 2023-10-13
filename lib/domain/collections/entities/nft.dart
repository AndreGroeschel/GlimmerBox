import 'package:freezed_annotation/freezed_annotation.dart';

part 'nft.freezed.dart';

/// An NFT
@freezed
class Nft with _$Nft {
  const factory Nft({
    @Default('') String identifier,
    @Default('') String name,
    @Default('') String description,
    @Default('') String imageUrl,
    @Default('') String contract,
  }) = _Nft;
}
