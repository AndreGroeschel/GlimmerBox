// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nft_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NftDetailsEvent {
  String get chainIdentifier => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chainIdentifier, String address, String identifier)
        loadNftDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String chainIdentifier, String address, String identifier)?
        loadNftDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chainIdentifier, String address, String identifier)?
        loadNftDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNftDetailsEvent value) loadNftDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNftDetailsEvent value)? loadNftDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNftDetailsEvent value)? loadNftDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NftDetailsEventCopyWith<NftDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftDetailsEventCopyWith<$Res> {
  factory $NftDetailsEventCopyWith(
          NftDetailsEvent value, $Res Function(NftDetailsEvent) then) =
      _$NftDetailsEventCopyWithImpl<$Res, NftDetailsEvent>;
  @useResult
  $Res call({String chainIdentifier, String address, String identifier});
}

/// @nodoc
class _$NftDetailsEventCopyWithImpl<$Res, $Val extends NftDetailsEvent>
    implements $NftDetailsEventCopyWith<$Res> {
  _$NftDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainIdentifier = null,
    Object? address = null,
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      chainIdentifier: null == chainIdentifier
          ? _value.chainIdentifier
          : chainIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadNftDetailsEventImplCopyWith<$Res>
    implements $NftDetailsEventCopyWith<$Res> {
  factory _$$LoadNftDetailsEventImplCopyWith(_$LoadNftDetailsEventImpl value,
          $Res Function(_$LoadNftDetailsEventImpl) then) =
      __$$LoadNftDetailsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chainIdentifier, String address, String identifier});
}

/// @nodoc
class __$$LoadNftDetailsEventImplCopyWithImpl<$Res>
    extends _$NftDetailsEventCopyWithImpl<$Res, _$LoadNftDetailsEventImpl>
    implements _$$LoadNftDetailsEventImplCopyWith<$Res> {
  __$$LoadNftDetailsEventImplCopyWithImpl(_$LoadNftDetailsEventImpl _value,
      $Res Function(_$LoadNftDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainIdentifier = null,
    Object? address = null,
    Object? identifier = null,
  }) {
    return _then(_$LoadNftDetailsEventImpl(
      chainIdentifier: null == chainIdentifier
          ? _value.chainIdentifier
          : chainIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadNftDetailsEventImpl implements LoadNftDetailsEvent {
  const _$LoadNftDetailsEventImpl(
      {required this.chainIdentifier,
      required this.address,
      required this.identifier});

  @override
  final String chainIdentifier;
  @override
  final String address;
  @override
  final String identifier;

  @override
  String toString() {
    return 'NftDetailsEvent.loadNftDetails(chainIdentifier: $chainIdentifier, address: $address, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNftDetailsEventImpl &&
            (identical(other.chainIdentifier, chainIdentifier) ||
                other.chainIdentifier == chainIdentifier) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, chainIdentifier, address, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadNftDetailsEventImplCopyWith<_$LoadNftDetailsEventImpl> get copyWith =>
      __$$LoadNftDetailsEventImplCopyWithImpl<_$LoadNftDetailsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chainIdentifier, String address, String identifier)
        loadNftDetails,
  }) {
    return loadNftDetails(chainIdentifier, address, identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String chainIdentifier, String address, String identifier)?
        loadNftDetails,
  }) {
    return loadNftDetails?.call(chainIdentifier, address, identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chainIdentifier, String address, String identifier)?
        loadNftDetails,
    required TResult orElse(),
  }) {
    if (loadNftDetails != null) {
      return loadNftDetails(chainIdentifier, address, identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNftDetailsEvent value) loadNftDetails,
  }) {
    return loadNftDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNftDetailsEvent value)? loadNftDetails,
  }) {
    return loadNftDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNftDetailsEvent value)? loadNftDetails,
    required TResult orElse(),
  }) {
    if (loadNftDetails != null) {
      return loadNftDetails(this);
    }
    return orElse();
  }
}

abstract class LoadNftDetailsEvent implements NftDetailsEvent {
  const factory LoadNftDetailsEvent(
      {required final String chainIdentifier,
      required final String address,
      required final String identifier}) = _$LoadNftDetailsEventImpl;

  @override
  String get chainIdentifier;
  @override
  String get address;
  @override
  String get identifier;
  @override
  @JsonKey(ignore: true)
  _$$LoadNftDetailsEventImplCopyWith<_$LoadNftDetailsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
