import 'package:freezed_annotation/freezed_annotation.dart';

part 'trait.freezed.dart';

/// Entity representing traits data
@freezed
class Trait with _$Trait {
  /// Default constructor
  const factory Trait({
    /// The value of the trait (e.g. 'Red')
    @Default('') String value,

    /// The name of the trait category (e.g. 'Background')
    @Default('') String traitType,
  }) = _Trait;
}
