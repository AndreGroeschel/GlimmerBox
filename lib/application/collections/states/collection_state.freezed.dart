// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CollectionPage collectionPage) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CollectionPage collectionPage)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CollectionPage collectionPage)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollectionInitial value) initial,
    required TResult Function(CollectionLoading value) loading,
    required TResult Function(CollectionLoaded value) loaded,
    required TResult Function(CollectionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollectionInitial value)? initial,
    TResult? Function(CollectionLoading value)? loading,
    TResult? Function(CollectionLoaded value)? loaded,
    TResult? Function(CollectionError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollectionInitial value)? initial,
    TResult Function(CollectionLoading value)? loading,
    TResult Function(CollectionLoaded value)? loaded,
    TResult Function(CollectionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionStateCopyWith<$Res> {
  factory $CollectionStateCopyWith(
          CollectionState value, $Res Function(CollectionState) then) =
      _$CollectionStateCopyWithImpl<$Res, CollectionState>;
}

/// @nodoc
class _$CollectionStateCopyWithImpl<$Res, $Val extends CollectionState>
    implements $CollectionStateCopyWith<$Res> {
  _$CollectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CollectionInitialImplCopyWith<$Res> {
  factory _$$CollectionInitialImplCopyWith(_$CollectionInitialImpl value,
          $Res Function(_$CollectionInitialImpl) then) =
      __$$CollectionInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CollectionInitialImplCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$CollectionInitialImpl>
    implements _$$CollectionInitialImplCopyWith<$Res> {
  __$$CollectionInitialImplCopyWithImpl(_$CollectionInitialImpl _value,
      $Res Function(_$CollectionInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CollectionInitialImpl implements CollectionInitial {
  const _$CollectionInitialImpl();

  @override
  String toString() {
    return 'CollectionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CollectionInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CollectionPage collectionPage) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CollectionPage collectionPage)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CollectionPage collectionPage)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollectionInitial value) initial,
    required TResult Function(CollectionLoading value) loading,
    required TResult Function(CollectionLoaded value) loaded,
    required TResult Function(CollectionError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollectionInitial value)? initial,
    TResult? Function(CollectionLoading value)? loading,
    TResult? Function(CollectionLoaded value)? loaded,
    TResult? Function(CollectionError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollectionInitial value)? initial,
    TResult Function(CollectionLoading value)? loading,
    TResult Function(CollectionLoaded value)? loaded,
    TResult Function(CollectionError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CollectionInitial implements CollectionState {
  const factory CollectionInitial() = _$CollectionInitialImpl;
}

/// @nodoc
abstract class _$$CollectionLoadingImplCopyWith<$Res> {
  factory _$$CollectionLoadingImplCopyWith(_$CollectionLoadingImpl value,
          $Res Function(_$CollectionLoadingImpl) then) =
      __$$CollectionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CollectionLoadingImplCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$CollectionLoadingImpl>
    implements _$$CollectionLoadingImplCopyWith<$Res> {
  __$$CollectionLoadingImplCopyWithImpl(_$CollectionLoadingImpl _value,
      $Res Function(_$CollectionLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CollectionLoadingImpl implements CollectionLoading {
  const _$CollectionLoadingImpl();

  @override
  String toString() {
    return 'CollectionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CollectionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CollectionPage collectionPage) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CollectionPage collectionPage)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CollectionPage collectionPage)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollectionInitial value) initial,
    required TResult Function(CollectionLoading value) loading,
    required TResult Function(CollectionLoaded value) loaded,
    required TResult Function(CollectionError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollectionInitial value)? initial,
    TResult? Function(CollectionLoading value)? loading,
    TResult? Function(CollectionLoaded value)? loaded,
    TResult? Function(CollectionError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollectionInitial value)? initial,
    TResult Function(CollectionLoading value)? loading,
    TResult Function(CollectionLoaded value)? loaded,
    TResult Function(CollectionError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CollectionLoading implements CollectionState {
  const factory CollectionLoading() = _$CollectionLoadingImpl;
}

/// @nodoc
abstract class _$$CollectionLoadedImplCopyWith<$Res> {
  factory _$$CollectionLoadedImplCopyWith(_$CollectionLoadedImpl value,
          $Res Function(_$CollectionLoadedImpl) then) =
      __$$CollectionLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CollectionPage collectionPage});

  $CollectionPageCopyWith<$Res> get collectionPage;
}

/// @nodoc
class __$$CollectionLoadedImplCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$CollectionLoadedImpl>
    implements _$$CollectionLoadedImplCopyWith<$Res> {
  __$$CollectionLoadedImplCopyWithImpl(_$CollectionLoadedImpl _value,
      $Res Function(_$CollectionLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionPage = null,
  }) {
    return _then(_$CollectionLoadedImpl(
      null == collectionPage
          ? _value.collectionPage
          : collectionPage // ignore: cast_nullable_to_non_nullable
              as CollectionPage,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionPageCopyWith<$Res> get collectionPage {
    return $CollectionPageCopyWith<$Res>(_value.collectionPage, (value) {
      return _then(_value.copyWith(collectionPage: value));
    });
  }
}

/// @nodoc

class _$CollectionLoadedImpl implements CollectionLoaded {
  const _$CollectionLoadedImpl(this.collectionPage);

  @override
  final CollectionPage collectionPage;

  @override
  String toString() {
    return 'CollectionState.loaded(collectionPage: $collectionPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionLoadedImpl &&
            (identical(other.collectionPage, collectionPage) ||
                other.collectionPage == collectionPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collectionPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionLoadedImplCopyWith<_$CollectionLoadedImpl> get copyWith =>
      __$$CollectionLoadedImplCopyWithImpl<_$CollectionLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CollectionPage collectionPage) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(collectionPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CollectionPage collectionPage)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(collectionPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CollectionPage collectionPage)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(collectionPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollectionInitial value) initial,
    required TResult Function(CollectionLoading value) loading,
    required TResult Function(CollectionLoaded value) loaded,
    required TResult Function(CollectionError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollectionInitial value)? initial,
    TResult? Function(CollectionLoading value)? loading,
    TResult? Function(CollectionLoaded value)? loaded,
    TResult? Function(CollectionError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollectionInitial value)? initial,
    TResult Function(CollectionLoading value)? loading,
    TResult Function(CollectionLoaded value)? loaded,
    TResult Function(CollectionError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CollectionLoaded implements CollectionState {
  const factory CollectionLoaded(final CollectionPage collectionPage) =
      _$CollectionLoadedImpl;

  CollectionPage get collectionPage;
  @JsonKey(ignore: true)
  _$$CollectionLoadedImplCopyWith<_$CollectionLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollectionErrorImplCopyWith<$Res> {
  factory _$$CollectionErrorImplCopyWith(_$CollectionErrorImpl value,
          $Res Function(_$CollectionErrorImpl) then) =
      __$$CollectionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CollectionErrorImplCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$CollectionErrorImpl>
    implements _$$CollectionErrorImplCopyWith<$Res> {
  __$$CollectionErrorImplCopyWithImpl(
      _$CollectionErrorImpl _value, $Res Function(_$CollectionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CollectionErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CollectionErrorImpl implements CollectionError {
  const _$CollectionErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CollectionState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionErrorImplCopyWith<_$CollectionErrorImpl> get copyWith =>
      __$$CollectionErrorImplCopyWithImpl<_$CollectionErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CollectionPage collectionPage) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CollectionPage collectionPage)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CollectionPage collectionPage)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CollectionInitial value) initial,
    required TResult Function(CollectionLoading value) loading,
    required TResult Function(CollectionLoaded value) loaded,
    required TResult Function(CollectionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CollectionInitial value)? initial,
    TResult? Function(CollectionLoading value)? loading,
    TResult? Function(CollectionLoaded value)? loaded,
    TResult? Function(CollectionError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CollectionInitial value)? initial,
    TResult Function(CollectionLoading value)? loading,
    TResult Function(CollectionLoaded value)? loaded,
    TResult Function(CollectionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CollectionError implements CollectionState {
  const factory CollectionError(final String message) = _$CollectionErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CollectionErrorImplCopyWith<_$CollectionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
