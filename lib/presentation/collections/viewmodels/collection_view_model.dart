import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/collection.dart';
import 'package:glimmer_box/domain/collections/entities/contract.dart';

part 'collection_view_model.freezed.dart';

@freezed
class CollectionViewModel with _$CollectionViewModel {
  const factory CollectionViewModel({
    @Default('') String name,
    @Default('') String description,
    @Default('') String imagePath,
    @Default([]) List<Contract> contracts,
  }) = _CollectionViewModel;
  const CollectionViewModel._();

  /// Creates view model from entity
  factory CollectionViewModel.fromCollection({required Collection collection}) {
    return CollectionViewModel(
      name: collection.name,
      description: collection.description,
      imagePath: collection.imagePath,
      contracts: collection.contracts,
    );
  }
}
