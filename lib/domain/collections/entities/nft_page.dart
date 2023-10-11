import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/nft.dart';

part 'nft_page.freezed.dart';

/// A page of NFTs
@freezed
class NftPage with _$NftPage {
  const factory NftPage({
    @Default([]) List<Nft> nfts,
    @Default('') String next,
  }) = _NftPage;
}
