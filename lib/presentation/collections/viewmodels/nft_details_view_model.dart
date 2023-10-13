import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/nft_details.dart';

part 'nft_details_view_model.freezed.dart';

@freezed
class NftDetailsViewModel with _$NftDetailsViewModel {
  const factory NftDetailsViewModel({
    @Default('') String name,
    @Default('') String description,
    @Default('') String imageUrl,
  }) = _NftDetailsViewModel;
  const NftDetailsViewModel._();

  /// Creates view model from entity
  factory NftDetailsViewModel.fromNftDetails({required NftDetails nftDetails}) {
    return NftDetailsViewModel(
      name: nftDetails.name,
      description: nftDetails.description,
      imageUrl: nftDetails.imageUrl,
    );
  }
}
