// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionDetailsEvent {
  String get chainIdentifier => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String get nextCursor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chainIdentifier, String address, int limit,
            String nextCursor)
        loadCollectionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chainIdentifier, String address, int limit,
            String nextCursor)?
        loadCollectionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chainIdentifier, String address, int limit,
            String nextCursor)?
        loadCollectionDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCollectionDetails value)
        loadCollectionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCollectionDetails value)? loadCollectionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCollectionDetails value)? loadCollectionDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionDetailsEventCopyWith<CollectionDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionDetailsEventCopyWith<$Res> {
  factory $CollectionDetailsEventCopyWith(CollectionDetailsEvent value,
          $Res Function(CollectionDetailsEvent) then) =
      _$CollectionDetailsEventCopyWithImpl<$Res, CollectionDetailsEvent>;
  @useResult
  $Res call(
      {String chainIdentifier, String address, int limit, String nextCursor});
}

/// @nodoc
class _$CollectionDetailsEventCopyWithImpl<$Res,
        $Val extends CollectionDetailsEvent>
    implements $CollectionDetailsEventCopyWith<$Res> {
  _$CollectionDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainIdentifier = null,
    Object? address = null,
    Object? limit = null,
    Object? nextCursor = null,
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
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextCursor: null == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadCollectionDetailsImplCopyWith<$Res>
    implements $CollectionDetailsEventCopyWith<$Res> {
  factory _$$LoadCollectionDetailsImplCopyWith(
          _$LoadCollectionDetailsImpl value,
          $Res Function(_$LoadCollectionDetailsImpl) then) =
      __$$LoadCollectionDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chainIdentifier, String address, int limit, String nextCursor});
}

/// @nodoc
class __$$LoadCollectionDetailsImplCopyWithImpl<$Res>
    extends _$CollectionDetailsEventCopyWithImpl<$Res,
        _$LoadCollectionDetailsImpl>
    implements _$$LoadCollectionDetailsImplCopyWith<$Res> {
  __$$LoadCollectionDetailsImplCopyWithImpl(_$LoadCollectionDetailsImpl _value,
      $Res Function(_$LoadCollectionDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainIdentifier = null,
    Object? address = null,
    Object? limit = null,
    Object? nextCursor = null,
  }) {
    return _then(_$LoadCollectionDetailsImpl(
      chainIdentifier: null == chainIdentifier
          ? _value.chainIdentifier
          : chainIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextCursor: null == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadCollectionDetailsImpl implements LoadCollectionDetails {
  const _$LoadCollectionDetailsImpl(
      {required this.chainIdentifier,
      required this.address,
      required this.limit,
      this.nextCursor = ''});

  @override
  final String chainIdentifier;
  @override
  final String address;
  @override
  final int limit;
  @override
  @JsonKey()
  final String nextCursor;

  @override
  String toString() {
    return 'CollectionDetailsEvent.loadCollectionDetails(chainIdentifier: $chainIdentifier, address: $address, limit: $limit, nextCursor: $nextCursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCollectionDetailsImpl &&
            (identical(other.chainIdentifier, chainIdentifier) ||
                other.chainIdentifier == chainIdentifier) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, chainIdentifier, address, limit, nextCursor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCollectionDetailsImplCopyWith<_$LoadCollectionDetailsImpl>
      get copyWith => __$$LoadCollectionDetailsImplCopyWithImpl<
          _$LoadCollectionDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chainIdentifier, String address, int limit,
            String nextCursor)
        loadCollectionDetails,
  }) {
    return loadCollectionDetails(chainIdentifier, address, limit, nextCursor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chainIdentifier, String address, int limit,
            String nextCursor)?
        loadCollectionDetails,
  }) {
    return loadCollectionDetails?.call(
        chainIdentifier, address, limit, nextCursor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chainIdentifier, String address, int limit,
            String nextCursor)?
        loadCollectionDetails,
    required TResult orElse(),
  }) {
    if (loadCollectionDetails != null) {
      return loadCollectionDetails(chainIdentifier, address, limit, nextCursor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCollectionDetails value)
        loadCollectionDetails,
  }) {
    return loadCollectionDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCollectionDetails value)? loadCollectionDetails,
  }) {
    return loadCollectionDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCollectionDetails value)? loadCollectionDetails,
    required TResult orElse(),
  }) {
    if (loadCollectionDetails != null) {
      return loadCollectionDetails(this);
    }
    return orElse();
  }
}

abstract class LoadCollectionDetails implements CollectionDetailsEvent {
  const factory LoadCollectionDetails(
      {required final String chainIdentifier,
      required final String address,
      required final int limit,
      final String nextCursor}) = _$LoadCollectionDetailsImpl;

  @override
  String get chainIdentifier;
  @override
  String get address;
  @override
  int get limit;
  @override
  String get nextCursor;
  @override
  @JsonKey(ignore: true)
  _$$LoadCollectionDetailsImplCopyWith<_$LoadCollectionDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
