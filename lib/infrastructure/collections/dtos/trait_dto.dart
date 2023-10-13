import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glimmer_box/domain/collections/entities/trait.dart';

part 'trait_dto.freezed.dart';
part 'trait_dto.g.dart';

/// DTO for TraitModel, representing a trait
@freezed
class TraitDto with _$TraitDto {
  /// Default constructor
  const factory TraitDto({
    /// The value of the trait (e.g. 'Red')
    /// Using dynamic as the type can be number, integer, date string, or string
    required dynamic value,

    /// The name of the trait category (e.g. 'Background')
    @Default('') String traitType,

    /// Ceiling for possible numeric trait values
    @Default('') String maxValue,

    /// Deprecated Field. Use Get Collection API instead.
    @Default(0) int traitCount,

    /// Deprecated Field
    @Default(0) int order,
  }) = _TraitDto;

  const TraitDto._();

  /// Creates a TraitDto object from JSON
  factory TraitDto.fromJson(Map<String, dynamic> json) =>
      _$TraitDtoFromJson(json);

  Trait toTrait() {
    var value = '';
    if (this.value is String) {
      value = this.value as String;
    }
    return Trait(
      value: value,
      traitType: traitType,
    );
  }
}
