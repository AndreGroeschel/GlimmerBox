// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nft_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NftDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NftDetails nftDetails) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NftDetails nftDetails)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NftDetails nftDetails)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NftDetailsInitial value) initial,
    required TResult Function(NftDetailsLoading value) loading,
    required TResult Function(NftDetailsLoaded value) loaded,
    required TResult Function(NftDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NftDetailsInitial value)? initial,
    TResult? Function(NftDetailsLoading value)? loading,
    TResult? Function(NftDetailsLoaded value)? loaded,
    TResult? Function(NftDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NftDetailsInitial value)? initial,
    TResult Function(NftDetailsLoading value)? loading,
    TResult Function(NftDetailsLoaded value)? loaded,
    TResult Function(NftDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftDetailsStateCopyWith<$Res> {
  factory $NftDetailsStateCopyWith(
          NftDetailsState value, $Res Function(NftDetailsState) then) =
      _$NftDetailsStateCopyWithImpl<$Res, NftDetailsState>;
}

/// @nodoc
class _$NftDetailsStateCopyWithImpl<$Res, $Val extends NftDetailsState>
    implements $NftDetailsStateCopyWith<$Res> {
  _$NftDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NftDetailsInitialImplCopyWith<$Res> {
  factory _$$NftDetailsInitialImplCopyWith(_$NftDetailsInitialImpl value,
          $Res Function(_$NftDetailsInitialImpl) then) =
      __$$NftDetailsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NftDetailsInitialImplCopyWithImpl<$Res>
    extends _$NftDetailsStateCopyWithImpl<$Res, _$NftDetailsInitialImpl>
    implements _$$NftDetailsInitialImplCopyWith<$Res> {
  __$$NftDetailsInitialImplCopyWithImpl(_$NftDetailsInitialImpl _value,
      $Res Function(_$NftDetailsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NftDetailsInitialImpl implements NftDetailsInitial {
  const _$NftDetailsInitialImpl();

  @override
  String toString() {
    return 'NftDetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NftDetailsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NftDetails nftDetails) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NftDetails nftDetails)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NftDetails nftDetails)? loaded,
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
    required TResult Function(NftDetailsInitial value) initial,
    required TResult Function(NftDetailsLoading value) loading,
    required TResult Function(NftDetailsLoaded value) loaded,
    required TResult Function(NftDetailsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NftDetailsInitial value)? initial,
    TResult? Function(NftDetailsLoading value)? loading,
    TResult? Function(NftDetailsLoaded value)? loaded,
    TResult? Function(NftDetailsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NftDetailsInitial value)? initial,
    TResult Function(NftDetailsLoading value)? loading,
    TResult Function(NftDetailsLoaded value)? loaded,
    TResult Function(NftDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NftDetailsInitial implements NftDetailsState {
  const factory NftDetailsInitial() = _$NftDetailsInitialImpl;
}

/// @nodoc
abstract class _$$NftDetailsLoadingImplCopyWith<$Res> {
  factory _$$NftDetailsLoadingImplCopyWith(_$NftDetailsLoadingImpl value,
          $Res Function(_$NftDetailsLoadingImpl) then) =
      __$$NftDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NftDetailsLoadingImplCopyWithImpl<$Res>
    extends _$NftDetailsStateCopyWithImpl<$Res, _$NftDetailsLoadingImpl>
    implements _$$NftDetailsLoadingImplCopyWith<$Res> {
  __$$NftDetailsLoadingImplCopyWithImpl(_$NftDetailsLoadingImpl _value,
      $Res Function(_$NftDetailsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NftDetailsLoadingImpl implements NftDetailsLoading {
  const _$NftDetailsLoadingImpl();

  @override
  String toString() {
    return 'NftDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NftDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NftDetails nftDetails) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NftDetails nftDetails)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NftDetails nftDetails)? loaded,
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
    required TResult Function(NftDetailsInitial value) initial,
    required TResult Function(NftDetailsLoading value) loading,
    required TResult Function(NftDetailsLoaded value) loaded,
    required TResult Function(NftDetailsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NftDetailsInitial value)? initial,
    TResult? Function(NftDetailsLoading value)? loading,
    TResult? Function(NftDetailsLoaded value)? loaded,
    TResult? Function(NftDetailsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NftDetailsInitial value)? initial,
    TResult Function(NftDetailsLoading value)? loading,
    TResult Function(NftDetailsLoaded value)? loaded,
    TResult Function(NftDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NftDetailsLoading implements NftDetailsState {
  const factory NftDetailsLoading() = _$NftDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$NftDetailsLoadedImplCopyWith<$Res> {
  factory _$$NftDetailsLoadedImplCopyWith(_$NftDetailsLoadedImpl value,
          $Res Function(_$NftDetailsLoadedImpl) then) =
      __$$NftDetailsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NftDetails nftDetails});

  $NftDetailsCopyWith<$Res> get nftDetails;
}

/// @nodoc
class __$$NftDetailsLoadedImplCopyWithImpl<$Res>
    extends _$NftDetailsStateCopyWithImpl<$Res, _$NftDetailsLoadedImpl>
    implements _$$NftDetailsLoadedImplCopyWith<$Res> {
  __$$NftDetailsLoadedImplCopyWithImpl(_$NftDetailsLoadedImpl _value,
      $Res Function(_$NftDetailsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nftDetails = null,
  }) {
    return _then(_$NftDetailsLoadedImpl(
      null == nftDetails
          ? _value.nftDetails
          : nftDetails // ignore: cast_nullable_to_non_nullable
              as NftDetails,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NftDetailsCopyWith<$Res> get nftDetails {
    return $NftDetailsCopyWith<$Res>(_value.nftDetails, (value) {
      return _then(_value.copyWith(nftDetails: value));
    });
  }
}

/// @nodoc

class _$NftDetailsLoadedImpl implements NftDetailsLoaded {
  const _$NftDetailsLoadedImpl(this.nftDetails);

  @override
  final NftDetails nftDetails;

  @override
  String toString() {
    return 'NftDetailsState.loaded(nftDetails: $nftDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NftDetailsLoadedImpl &&
            (identical(other.nftDetails, nftDetails) ||
                other.nftDetails == nftDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nftDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NftDetailsLoadedImplCopyWith<_$NftDetailsLoadedImpl> get copyWith =>
      __$$NftDetailsLoadedImplCopyWithImpl<_$NftDetailsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NftDetails nftDetails) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(nftDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NftDetails nftDetails)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(nftDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NftDetails nftDetails)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(nftDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NftDetailsInitial value) initial,
    required TResult Function(NftDetailsLoading value) loading,
    required TResult Function(NftDetailsLoaded value) loaded,
    required TResult Function(NftDetailsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NftDetailsInitial value)? initial,
    TResult? Function(NftDetailsLoading value)? loading,
    TResult? Function(NftDetailsLoaded value)? loaded,
    TResult? Function(NftDetailsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NftDetailsInitial value)? initial,
    TResult Function(NftDetailsLoading value)? loading,
    TResult Function(NftDetailsLoaded value)? loaded,
    TResult Function(NftDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NftDetailsLoaded implements NftDetailsState {
  const factory NftDetailsLoaded(final NftDetails nftDetails) =
      _$NftDetailsLoadedImpl;

  NftDetails get nftDetails;
  @JsonKey(ignore: true)
  _$$NftDetailsLoadedImplCopyWith<_$NftDetailsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NftDetailsErrorImplCopyWith<$Res> {
  factory _$$NftDetailsErrorImplCopyWith(_$NftDetailsErrorImpl value,
          $Res Function(_$NftDetailsErrorImpl) then) =
      __$$NftDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NftDetailsErrorImplCopyWithImpl<$Res>
    extends _$NftDetailsStateCopyWithImpl<$Res, _$NftDetailsErrorImpl>
    implements _$$NftDetailsErrorImplCopyWith<$Res> {
  __$$NftDetailsErrorImplCopyWithImpl(
      _$NftDetailsErrorImpl _value, $Res Function(_$NftDetailsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NftDetailsErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NftDetailsErrorImpl implements NftDetailsError {
  const _$NftDetailsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NftDetailsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NftDetailsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NftDetailsErrorImplCopyWith<_$NftDetailsErrorImpl> get copyWith =>
      __$$NftDetailsErrorImplCopyWithImpl<_$NftDetailsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NftDetails nftDetails) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NftDetails nftDetails)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NftDetails nftDetails)? loaded,
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
    required TResult Function(NftDetailsInitial value) initial,
    required TResult Function(NftDetailsLoading value) loading,
    required TResult Function(NftDetailsLoaded value) loaded,
    required TResult Function(NftDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NftDetailsInitial value)? initial,
    TResult? Function(NftDetailsLoading value)? loading,
    TResult? Function(NftDetailsLoaded value)? loaded,
    TResult? Function(NftDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NftDetailsInitial value)? initial,
    TResult Function(NftDetailsLoading value)? loading,
    TResult Function(NftDetailsLoaded value)? loaded,
    TResult Function(NftDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NftDetailsError implements NftDetailsState {
  const factory NftDetailsError(final String message) = _$NftDetailsErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$NftDetailsErrorImplCopyWith<_$NftDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
