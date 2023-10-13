import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/nft.dart';

part 'nft_view_model.freezed.dart';

@freezed
class NftViewModel with _$NftViewModel {
  const factory NftViewModel({
    @Default('') String name,
    @Default('') String description,
    @Default('') String imageUrl,
    @Default('') String contract,
    @Default('') String identifier,
  }) = _NftViewModel;
  const NftViewModel._();

  /// Creates view model from entity
  factory NftViewModel.fromNft({required Nft nft}) {
    return NftViewModel(
      name: nft.name,
      description: nft.description,
      imageUrl: nft.imageUrl,
      contract: nft.contract,
      identifier: nft.identifier,
    );
  }
}
