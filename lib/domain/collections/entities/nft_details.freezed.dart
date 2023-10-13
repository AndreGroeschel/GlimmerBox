// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nft_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NftDetails {
  /// Identifier for the NFT
  String get identifier => throw _privateConstructorUsedError;

  /// Name of the NFT collection
  String get collection => throw _privateConstructorUsedError;

  /// Token standard (e.g., erc721)
  String get tokenStandard => throw _privateConstructorUsedError;

  /// Contract address
  String get contract => throw _privateConstructorUsedError;

  /// NFT name
  String get name => throw _privateConstructorUsedError;

  /// Description of the NFT
  String get description => throw _privateConstructorUsedError;

  /// Image URL for the NFT
  String get imageUrl => throw _privateConstructorUsedError;

  /// Last update timestamp
  String get updatedAt => throw _privateConstructorUsedError;

  /// Flag indicating if the NFT is considered suspicious
  bool get isSuspicious => throw _privateConstructorUsedError;

  /// The creator's address
  String get creator => throw _privateConstructorUsedError;

  /// List of owners of the NFT
  List<Owner> get owners => throw _privateConstructorUsedError;

  /// Associated traits of the NFT
  List<Trait> get traits => throw _privateConstructorUsedError;

  /// Rarity data for the NFT
  Rarity? get rarity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NftDetailsCopyWith<NftDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftDetailsCopyWith<$Res> {
  factory $NftDetailsCopyWith(
          NftDetails value, $Res Function(NftDetails) then) =
      _$NftDetailsCopyWithImpl<$Res, NftDetails>;
  @useResult
  $Res call(
      {String identifier,
      String collection,
      String tokenStandard,
      String contract,
      String name,
      String description,
      String imageUrl,
      String updatedAt,
      bool isSuspicious,
      String creator,
      List<Owner> owners,
      List<Trait> traits,
      Rarity? rarity});

  $RarityCopyWith<$Res>? get rarity;
}

/// @nodoc
class _$NftDetailsCopyWithImpl<$Res, $Val extends NftDetails>
    implements $NftDetailsCopyWith<$Res> {
  _$NftDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? collection = null,
    Object? tokenStandard = null,
    Object? contract = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? updatedAt = null,
    Object? isSuspicious = null,
    Object? creator = null,
    Object? owners = null,
    Object? traits = null,
    Object? rarity = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      tokenStandard: null == tokenStandard
          ? _value.tokenStandard
          : tokenStandard // ignore: cast_nullable_to_non_nullable
              as String,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isSuspicious: null == isSuspicious
          ? _value.isSuspicious
          : isSuspicious // ignore: cast_nullable_to_non_nullable
              as bool,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      owners: null == owners
          ? _value.owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<Owner>,
      traits: null == traits
          ? _value.traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<Trait>,
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RarityCopyWith<$Res>? get rarity {
    if (_value.rarity == null) {
      return null;
    }

    return $RarityCopyWith<$Res>(_value.rarity!, (value) {
      return _then(_value.copyWith(rarity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NftDetailsImplCopyWith<$Res>
    implements $NftDetailsCopyWith<$Res> {
  factory _$$NftDetailsImplCopyWith(
          _$NftDetailsImpl value, $Res Function(_$NftDetailsImpl) then) =
      __$$NftDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identifier,
      String collection,
      String tokenStandard,
      String contract,
      String name,
      String description,
      String imageUrl,
      String updatedAt,
      bool isSuspicious,
      String creator,
      List<Owner> owners,
      List<Trait> traits,
      Rarity? rarity});

  @override
  $RarityCopyWith<$Res>? get rarity;
}

/// @nodoc
class __$$NftDetailsImplCopyWithImpl<$Res>
    extends _$NftDetailsCopyWithImpl<$Res, _$NftDetailsImpl>
    implements _$$NftDetailsImplCopyWith<$Res> {
  __$$NftDetailsImplCopyWithImpl(
      _$NftDetailsImpl _value, $Res Function(_$NftDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? collection = null,
    Object? tokenStandard = null,
    Object? contract = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? updatedAt = null,
    Object? isSuspicious = null,
    Object? creator = null,
    Object? owners = null,
    Object? traits = null,
    Object? rarity = freezed,
  }) {
    return _then(_$NftDetailsImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      tokenStandard: null == tokenStandard
          ? _value.tokenStandard
          : tokenStandard // ignore: cast_nullable_to_non_nullable
              as String,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isSuspicious: null == isSuspicious
          ? _value.isSuspicious
          : isSuspicious // ignore: cast_nullable_to_non_nullable
              as bool,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      owners: null == owners
          ? _value._owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<Owner>,
      traits: null == traits
          ? _value._traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<Trait>,
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as Rarity?,
    ));
  }
}

/// @nodoc

class _$NftDetailsImpl implements _NftDetails {
  const _$NftDetailsImpl(
      {this.identifier = '',
      this.collection = '',
      this.tokenStandard = '',
      this.contract = '',
      this.name = '',
      this.description = '',
      this.imageUrl = '',
      this.updatedAt = '',
      this.isSuspicious = false,
      this.creator = '',
      final List<Owner> owners = const [],
      final List<Trait> traits = const [],
      this.rarity})
      : _owners = owners,
        _traits = traits;

  /// Identifier for the NFT
  @override
  @JsonKey()
  final String identifier;

  /// Name of the NFT collection
  @override
  @JsonKey()
  final String collection;

  /// Token standard (e.g., erc721)
  @override
  @JsonKey()
  final String tokenStandard;

  /// Contract address
  @override
  @JsonKey()
  final String contract;

  /// NFT name
  @override
  @JsonKey()
  final String name;

  /// Description of the NFT
  @override
  @JsonKey()
  final String description;

  /// Image URL for the NFT
  @override
  @JsonKey()
  final String imageUrl;

  /// Last update timestamp
  @override
  @JsonKey()
  final String updatedAt;

  /// Flag indicating if the NFT is considered suspicious
  @override
  @JsonKey()
  final bool isSuspicious;

  /// The creator's address
  @override
  @JsonKey()
  final String creator;

  /// List of owners of the NFT
  final List<Owner> _owners;

  /// List of owners of the NFT
  @override
  @JsonKey()
  List<Owner> get owners {
    if (_owners is EqualUnmodifiableListView) return _owners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_owners);
  }

  /// Associated traits of the NFT
  final List<Trait> _traits;

  /// Associated traits of the NFT
  @override
  @JsonKey()
  List<Trait> get traits {
    if (_traits is EqualUnmodifiableListView) return _traits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_traits);
  }

  /// Rarity data for the NFT
  @override
  final Rarity? rarity;

  @override
  String toString() {
    return 'NftDetails(identifier: $identifier, collection: $collection, tokenStandard: $tokenStandard, contract: $contract, name: $name, description: $description, imageUrl: $imageUrl, updatedAt: $updatedAt, isSuspicious: $isSuspicious, creator: $creator, owners: $owners, traits: $traits, rarity: $rarity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NftDetailsImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.tokenStandard, tokenStandard) ||
                other.tokenStandard == tokenStandard) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isSuspicious, isSuspicious) ||
                other.isSuspicious == isSuspicious) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            const DeepCollectionEquality().equals(other._owners, _owners) &&
            const DeepCollectionEquality().equals(other._traits, _traits) &&
            (identical(other.rarity, rarity) || other.rarity == rarity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      identifier,
      collection,
      tokenStandard,
      contract,
      name,
      description,
      imageUrl,
      updatedAt,
      isSuspicious,
      creator,
      const DeepCollectionEquality().hash(_owners),
      const DeepCollectionEquality().hash(_traits),
      rarity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NftDetailsImplCopyWith<_$NftDetailsImpl> get copyWith =>
      __$$NftDetailsImplCopyWithImpl<_$NftDetailsImpl>(this, _$identity);
}

abstract class _NftDetails implements NftDetails {
  const factory _NftDetails(
      {final String identifier,
      final String collection,
      final String tokenStandard,
      final String contract,
      final String name,
      final String description,
      final String imageUrl,
      final String updatedAt,
      final bool isSuspicious,
      final String creator,
      final List<Owner> owners,
      final List<Trait> traits,
      final Rarity? rarity}) = _$NftDetailsImpl;

  @override

  /// Identifier for the NFT
  String get identifier;
  @override

  /// Name of the NFT collection
  String get collection;
  @override

  /// Token standard (e.g., erc721)
  String get tokenStandard;
  @override

  /// Contract address
  String get contract;
  @override

  /// NFT name
  String get name;
  @override

  /// Description of the NFT
  String get description;
  @override

  /// Image URL for the NFT
  String get imageUrl;
  @override

  /// Last update timestamp
  String get updatedAt;
  @override

  /// Flag indicating if the NFT is considered suspicious
  bool get isSuspicious;
  @override

  /// The creator's address
  String get creator;
  @override

  /// List of owners of the NFT
  List<Owner> get owners;
  @override

  /// Associated traits of the NFT
  List<Trait> get traits;
  @override

  /// Rarity data for the NFT
  Rarity? get rarity;
  @override
  @JsonKey(ignore: true)
  _$$NftDetailsImplCopyWith<_$NftDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
