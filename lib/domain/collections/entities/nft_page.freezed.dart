// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nft_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NftPage {
  List<Nft> get nfts => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NftPageCopyWith<NftPage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftPageCopyWith<$Res> {
  factory $NftPageCopyWith(NftPage value, $Res Function(NftPage) then) =
      _$NftPageCopyWithImpl<$Res, NftPage>;
  @useResult
  $Res call({List<Nft> nfts, String next});
}

/// @nodoc
class _$NftPageCopyWithImpl<$Res, $Val extends NftPage>
    implements $NftPageCopyWith<$Res> {
  _$NftPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nfts = null,
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      nfts: null == nfts
          ? _value.nfts
          : nfts // ignore: cast_nullable_to_non_nullable
              as List<Nft>,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NftPageImplCopyWith<$Res> implements $NftPageCopyWith<$Res> {
  factory _$$NftPageImplCopyWith(
          _$NftPageImpl value, $Res Function(_$NftPageImpl) then) =
      __$$NftPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Nft> nfts, String next});
}

/// @nodoc
class __$$NftPageImplCopyWithImpl<$Res>
    extends _$NftPageCopyWithImpl<$Res, _$NftPageImpl>
    implements _$$NftPageImplCopyWith<$Res> {
  __$$NftPageImplCopyWithImpl(
      _$NftPageImpl _value, $Res Function(_$NftPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nfts = null,
    Object? next = null,
  }) {
    return _then(_$NftPageImpl(
      nfts: null == nfts
          ? _value._nfts
          : nfts // ignore: cast_nullable_to_non_nullable
              as List<Nft>,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NftPageImpl implements _NftPage {
  const _$NftPageImpl({final List<Nft> nfts = const [], this.next = ''})
      : _nfts = nfts;

  final List<Nft> _nfts;
  @override
  @JsonKey()
  List<Nft> get nfts {
    if (_nfts is EqualUnmodifiableListView) return _nfts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nfts);
  }

  @override
  @JsonKey()
  final String next;

  @override
  String toString() {
    return 'NftPage(nfts: $nfts, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NftPageImpl &&
            const DeepCollectionEquality().equals(other._nfts, _nfts) &&
            (identical(other.next, next) || other.next == next));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nfts), next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NftPageImplCopyWith<_$NftPageImpl> get copyWith =>
      __$$NftPageImplCopyWithImpl<_$NftPageImpl>(this, _$identity);
}

abstract class _NftPage implements NftPage {
  const factory _NftPage({final List<Nft> nfts, final String next}) =
      _$NftPageImpl;

  @override
  List<Nft> get nfts;
  @override
  String get next;
  @override
  @JsonKey(ignore: true)
  _$$NftPageImplCopyWith<_$NftPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
