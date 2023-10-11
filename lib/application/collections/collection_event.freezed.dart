// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionEvent {
  String get chainIdentifier => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String get nextCursor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chainIdentifier, int limit, String nextCursor)
        loadCollections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chainIdentifier, int limit, String nextCursor)?
        loadCollections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chainIdentifier, int limit, String nextCursor)?
        loadCollections,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCollections value) loadCollections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCollections value)? loadCollections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCollections value)? loadCollections,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionEventCopyWith<CollectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionEventCopyWith<$Res> {
  factory $CollectionEventCopyWith(
          CollectionEvent value, $Res Function(CollectionEvent) then) =
      _$CollectionEventCopyWithImpl<$Res, CollectionEvent>;
  @useResult
  $Res call({String chainIdentifier, int limit, String nextCursor});
}

/// @nodoc
class _$CollectionEventCopyWithImpl<$Res, $Val extends CollectionEvent>
    implements $CollectionEventCopyWith<$Res> {
  _$CollectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainIdentifier = null,
    Object? limit = null,
    Object? nextCursor = null,
  }) {
    return _then(_value.copyWith(
      chainIdentifier: null == chainIdentifier
          ? _value.chainIdentifier
          : chainIdentifier // ignore: cast_nullable_to_non_nullable
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
abstract class _$$LoadCollectionsImplCopyWith<$Res>
    implements $CollectionEventCopyWith<$Res> {
  factory _$$LoadCollectionsImplCopyWith(_$LoadCollectionsImpl value,
          $Res Function(_$LoadCollectionsImpl) then) =
      __$$LoadCollectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chainIdentifier, int limit, String nextCursor});
}

/// @nodoc
class __$$LoadCollectionsImplCopyWithImpl<$Res>
    extends _$CollectionEventCopyWithImpl<$Res, _$LoadCollectionsImpl>
    implements _$$LoadCollectionsImplCopyWith<$Res> {
  __$$LoadCollectionsImplCopyWithImpl(
      _$LoadCollectionsImpl _value, $Res Function(_$LoadCollectionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chainIdentifier = null,
    Object? limit = null,
    Object? nextCursor = null,
  }) {
    return _then(_$LoadCollectionsImpl(
      chainIdentifier: null == chainIdentifier
          ? _value.chainIdentifier
          : chainIdentifier // ignore: cast_nullable_to_non_nullable
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

class _$LoadCollectionsImpl implements LoadCollections {
  const _$LoadCollectionsImpl(
      {required this.chainIdentifier,
      required this.limit,
      this.nextCursor = ''});

  @override
  final String chainIdentifier;
  @override
  final int limit;
  @override
  @JsonKey()
  final String nextCursor;

  @override
  String toString() {
    return 'CollectionEvent.loadCollections(chainIdentifier: $chainIdentifier, limit: $limit, nextCursor: $nextCursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCollectionsImpl &&
            (identical(other.chainIdentifier, chainIdentifier) ||
                other.chainIdentifier == chainIdentifier) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, chainIdentifier, limit, nextCursor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCollectionsImplCopyWith<_$LoadCollectionsImpl> get copyWith =>
      __$$LoadCollectionsImplCopyWithImpl<_$LoadCollectionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chainIdentifier, int limit, String nextCursor)
        loadCollections,
  }) {
    return loadCollections(chainIdentifier, limit, nextCursor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chainIdentifier, int limit, String nextCursor)?
        loadCollections,
  }) {
    return loadCollections?.call(chainIdentifier, limit, nextCursor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chainIdentifier, int limit, String nextCursor)?
        loadCollections,
    required TResult orElse(),
  }) {
    if (loadCollections != null) {
      return loadCollections(chainIdentifier, limit, nextCursor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCollections value) loadCollections,
  }) {
    return loadCollections(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCollections value)? loadCollections,
  }) {
    return loadCollections?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCollections value)? loadCollections,
    required TResult orElse(),
  }) {
    if (loadCollections != null) {
      return loadCollections(this);
    }
    return orElse();
  }
}

abstract class LoadCollections implements CollectionEvent {
  const factory LoadCollections(
      {required final String chainIdentifier,
      required final int limit,
      final String nextCursor}) = _$LoadCollectionsImpl;

  @override
  String get chainIdentifier;
  @override
  int get limit;
  @override
  String get nextCursor;
  @override
  @JsonKey(ignore: true)
  _$$LoadCollectionsImplCopyWith<_$LoadCollectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
