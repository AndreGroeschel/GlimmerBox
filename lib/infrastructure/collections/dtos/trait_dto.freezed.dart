// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trait_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TraitDto _$TraitDtoFromJson(Map<String, dynamic> json) {
  return _TraitDto.fromJson(json);
}

/// @nodoc
mixin _$TraitDto {
  /// The value of the trait (e.g. 'Red')
  /// Using dynamic as the type can be number, integer, date string, or string
  dynamic get value => throw _privateConstructorUsedError;

  /// The name of the trait category (e.g. 'Background')
  String get traitType => throw _privateConstructorUsedError;

  /// Ceiling for possible numeric trait values
  String get maxValue => throw _privateConstructorUsedError;

  /// Deprecated Field. Use Get Collection API instead.
  int get traitCount => throw _privateConstructorUsedError;

  /// Deprecated Field
  int get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TraitDtoCopyWith<TraitDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraitDtoCopyWith<$Res> {
  factory $TraitDtoCopyWith(TraitDto value, $Res Function(TraitDto) then) =
      _$TraitDtoCopyWithImpl<$Res, TraitDto>;
  @useResult
  $Res call(
      {dynamic value,
      String traitType,
      String maxValue,
      int traitCount,
      int order});
}

/// @nodoc
class _$TraitDtoCopyWithImpl<$Res, $Val extends TraitDto>
    implements $TraitDtoCopyWith<$Res> {
  _$TraitDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? traitType = null,
    Object? maxValue = null,
    Object? traitCount = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      traitType: null == traitType
          ? _value.traitType
          : traitType // ignore: cast_nullable_to_non_nullable
              as String,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as String,
      traitCount: null == traitCount
          ? _value.traitCount
          : traitCount // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TraitDtoImplCopyWith<$Res>
    implements $TraitDtoCopyWith<$Res> {
  factory _$$TraitDtoImplCopyWith(
          _$TraitDtoImpl value, $Res Function(_$TraitDtoImpl) then) =
      __$$TraitDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic value,
      String traitType,
      String maxValue,
      int traitCount,
      int order});
}

/// @nodoc
class __$$TraitDtoImplCopyWithImpl<$Res>
    extends _$TraitDtoCopyWithImpl<$Res, _$TraitDtoImpl>
    implements _$$TraitDtoImplCopyWith<$Res> {
  __$$TraitDtoImplCopyWithImpl(
      _$TraitDtoImpl _value, $Res Function(_$TraitDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? traitType = null,
    Object? maxValue = null,
    Object? traitCount = null,
    Object? order = null,
  }) {
    return _then(_$TraitDtoImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      traitType: null == traitType
          ? _value.traitType
          : traitType // ignore: cast_nullable_to_non_nullable
              as String,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as String,
      traitCount: null == traitCount
          ? _value.traitCount
          : traitCount // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TraitDtoImpl extends _TraitDto {
  const _$TraitDtoImpl(
      {required this.value,
      this.traitType = '',
      this.maxValue = '',
      this.traitCount = 0,
      this.order = 0})
      : super._();

  factory _$TraitDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TraitDtoImplFromJson(json);

  /// The value of the trait (e.g. 'Red')
  /// Using dynamic as the type can be number, integer, date string, or string
  @override
  final dynamic value;

  /// The name of the trait category (e.g. 'Background')
  @override
  @JsonKey()
  final String traitType;

  /// Ceiling for possible numeric trait values
  @override
  @JsonKey()
  final String maxValue;

  /// Deprecated Field. Use Get Collection API instead.
  @override
  @JsonKey()
  final int traitCount;

  /// Deprecated Field
  @override
  @JsonKey()
  final int order;

  @override
  String toString() {
    return 'TraitDto(value: $value, traitType: $traitType, maxValue: $maxValue, traitCount: $traitCount, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TraitDtoImpl &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.traitType, traitType) ||
                other.traitType == traitType) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.traitCount, traitCount) ||
                other.traitCount == traitCount) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      traitType,
      maxValue,
      traitCount,
      order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TraitDtoImplCopyWith<_$TraitDtoImpl> get copyWith =>
      __$$TraitDtoImplCopyWithImpl<_$TraitDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TraitDtoImplToJson(
      this,
    );
  }
}

abstract class _TraitDto extends TraitDto {
  const factory _TraitDto(
      {required final dynamic value,
      final String traitType,
      final String maxValue,
      final int traitCount,
      final int order}) = _$TraitDtoImpl;
  const _TraitDto._() : super._();

  factory _TraitDto.fromJson(Map<String, dynamic> json) =
      _$TraitDtoImpl.fromJson;

  @override

  /// The value of the trait (e.g. 'Red')
  /// Using dynamic as the type can be number, integer, date string, or string
  dynamic get value;
  @override

  /// The name of the trait category (e.g. 'Background')
  String get traitType;
  @override

  /// Ceiling for possible numeric trait values
  String get maxValue;
  @override

  /// Deprecated Field. Use Get Collection API instead.
  int get traitCount;
  @override

  /// Deprecated Field
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$TraitDtoImplCopyWith<_$TraitDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
