// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OwnerDto _$OwnerDtoFromJson(Map<String, dynamic> json) {
  return _OwnerDto.fromJson(json);
}

/// @nodoc
mixin _$OwnerDto {
  /// The unique public blockchain identifier for the owner wallet
  String get address => throw _privateConstructorUsedError;

  /// The number of tokens owned
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerDtoCopyWith<OwnerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerDtoCopyWith<$Res> {
  factory $OwnerDtoCopyWith(OwnerDto value, $Res Function(OwnerDto) then) =
      _$OwnerDtoCopyWithImpl<$Res, OwnerDto>;
  @useResult
  $Res call({String address, int quantity});
}

/// @nodoc
class _$OwnerDtoCopyWithImpl<$Res, $Val extends OwnerDto>
    implements $OwnerDtoCopyWith<$Res> {
  _$OwnerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerDtoImplCopyWith<$Res>
    implements $OwnerDtoCopyWith<$Res> {
  factory _$$OwnerDtoImplCopyWith(
          _$OwnerDtoImpl value, $Res Function(_$OwnerDtoImpl) then) =
      __$$OwnerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, int quantity});
}

/// @nodoc
class __$$OwnerDtoImplCopyWithImpl<$Res>
    extends _$OwnerDtoCopyWithImpl<$Res, _$OwnerDtoImpl>
    implements _$$OwnerDtoImplCopyWith<$Res> {
  __$$OwnerDtoImplCopyWithImpl(
      _$OwnerDtoImpl _value, $Res Function(_$OwnerDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? quantity = null,
  }) {
    return _then(_$OwnerDtoImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerDtoImpl extends _OwnerDto {
  const _$OwnerDtoImpl({this.address = '', this.quantity = 0}) : super._();

  factory _$OwnerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerDtoImplFromJson(json);

  /// The unique public blockchain identifier for the owner wallet
  @override
  @JsonKey()
  final String address;

  /// The number of tokens owned
  @override
  @JsonKey()
  final int quantity;

  @override
  String toString() {
    return 'OwnerDto(address: $address, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerDtoImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerDtoImplCopyWith<_$OwnerDtoImpl> get copyWith =>
      __$$OwnerDtoImplCopyWithImpl<_$OwnerDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerDtoImplToJson(
      this,
    );
  }
}

abstract class _OwnerDto extends OwnerDto {
  const factory _OwnerDto({final String address, final int quantity}) =
      _$OwnerDtoImpl;
  const _OwnerDto._() : super._();

  factory _OwnerDto.fromJson(Map<String, dynamic> json) =
      _$OwnerDtoImpl.fromJson;

  @override

  /// The unique public blockchain identifier for the owner wallet
  String get address;
  @override

  /// The number of tokens owned
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$OwnerDtoImplCopyWith<_$OwnerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
