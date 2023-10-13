import 'package:freezed_annotation/freezed_annotation.dart';

part 'nft_details_event.freezed.dart';

@freezed
class NftDetailsEvent with _$NftDetailsEvent {
  const factory NftDetailsEvent.loadNftDetails({
    required String chainIdentifier,
    required String address,
    required String identifier,
  }) = LoadNftDetailsEvent;
}
