// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nft_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NftDto _$NftDtoFromJson(Map<String, dynamic> json) {
  return _NftDto.fromJson(json);
}

/// @nodoc
mixin _$NftDto {
  /// Identifier for the NFT
  String get identifier => throw _privateConstructorUsedError;

  /// Name of the NFT collection
  String get collection => throw _privateConstructorUsedError;

  /// Contract address
  String get contract => throw _privateConstructorUsedError;

  /// Token standard (e.g., erc721)
  String get tokenStandard => throw _privateConstructorUsedError;

  /// NFT name
  String get name => throw _privateConstructorUsedError;

  /// Description of the NFT
  String get description => throw _privateConstructorUsedError;

  /// Image URL for the NFT
// ignore: invalid_annotation_target
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  /// Metadata URL for the NFT
  String get metadataUrl => throw _privateConstructorUsedError;

  /// Last update timestamp
  String get updatedAt => throw _privateConstructorUsedError;

  /// If the NFT is disabled
  bool get isDisabled => throw _privateConstructorUsedError;

  /// If the NFT is NSFW
  bool get isNsfw => throw _privateConstructorUsedError;

  /// URL for any associated animation
  String get animationUrl => throw _privateConstructorUsedError;

  /// Flag indicating if the NFT is considered suspicious
  bool get isSuspicious => throw _privateConstructorUsedError;

  /// The creator's address
  String get creator => throw _privateConstructorUsedError;

  /// List of owners of the NFT
  List<OwnerDto> get owners => throw _privateConstructorUsedError;

  /// Associated traits of the NFT
  List<TraitDto> get traits => throw _privateConstructorUsedError;

  /// Rarity data for the NFT
  RarityDto? get rarity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NftDtoCopyWith<NftDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftDtoCopyWith<$Res> {
  factory $NftDtoCopyWith(NftDto value, $Res Function(NftDto) then) =
      _$NftDtoCopyWithImpl<$Res, NftDto>;
  @useResult
  $Res call(
      {String identifier,
      String collection,
      String contract,
      String tokenStandard,
      String name,
      String description,
      @JsonKey(name: 'image_url') String imageUrl,
      String metadataUrl,
      String updatedAt,
      bool isDisabled,
      bool isNsfw,
      String animationUrl,
      bool isSuspicious,
      String creator,
      List<OwnerDto> owners,
      List<TraitDto> traits,
      RarityDto? rarity});

  $RarityDtoCopyWith<$Res>? get rarity;
}

/// @nodoc
class _$NftDtoCopyWithImpl<$Res, $Val extends NftDto>
    implements $NftDtoCopyWith<$Res> {
  _$NftDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? collection = null,
    Object? contract = null,
    Object? tokenStandard = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? metadataUrl = null,
    Object? updatedAt = null,
    Object? isDisabled = null,
    Object? isNsfw = null,
    Object? animationUrl = null,
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
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as String,
      tokenStandard: null == tokenStandard
          ? _value.tokenStandard
          : tokenStandard // ignore: cast_nullable_to_non_nullable
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
      metadataUrl: null == metadataUrl
          ? _value.metadataUrl
          : metadataUrl // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isDisabled: null == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isNsfw: null == isNsfw
          ? _value.isNsfw
          : isNsfw // ignore: cast_nullable_to_non_nullable
              as bool,
      animationUrl: null == animationUrl
          ? _value.animationUrl
          : animationUrl // ignore: cast_nullable_to_non_nullable
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
              as List<OwnerDto>,
      traits: null == traits
          ? _value.traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<TraitDto>,
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as RarityDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RarityDtoCopyWith<$Res>? get rarity {
    if (_value.rarity == null) {
      return null;
    }

    return $RarityDtoCopyWith<$Res>(_value.rarity!, (value) {
      return _then(_value.copyWith(rarity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NftDtoImplCopyWith<$Res> implements $NftDtoCopyWith<$Res> {
  factory _$$NftDtoImplCopyWith(
          _$NftDtoImpl value, $Res Function(_$NftDtoImpl) then) =
      __$$NftDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identifier,
      String collection,
      String contract,
      String tokenStandard,
      String name,
      String description,
      @JsonKey(name: 'image_url') String imageUrl,
      String metadataUrl,
      String updatedAt,
      bool isDisabled,
      bool isNsfw,
      String animationUrl,
      bool isSuspicious,
      String creator,
      List<OwnerDto> owners,
      List<TraitDto> traits,
      RarityDto? rarity});

  @override
  $RarityDtoCopyWith<$Res>? get rarity;
}

/// @nodoc
class __$$NftDtoImplCopyWithImpl<$Res>
    extends _$NftDtoCopyWithImpl<$Res, _$NftDtoImpl>
    implements _$$NftDtoImplCopyWith<$Res> {
  __$$NftDtoImplCopyWithImpl(
      _$NftDtoImpl _value, $Res Function(_$NftDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? collection = null,
    Object? contract = null,
    Object? tokenStandard = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? metadataUrl = null,
    Object? updatedAt = null,
    Object? isDisabled = null,
    Object? isNsfw = null,
    Object? animationUrl = null,
    Object? isSuspicious = null,
    Object? creator = null,
    Object? owners = null,
    Object? traits = null,
    Object? rarity = freezed,
  }) {
    return _then(_$NftDtoImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as String,
      tokenStandard: null == tokenStandard
          ? _value.tokenStandard
          : tokenStandard // ignore: cast_nullable_to_non_nullable
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
      metadataUrl: null == metadataUrl
          ? _value.metadataUrl
          : metadataUrl // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isDisabled: null == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isNsfw: null == isNsfw
          ? _value.isNsfw
          : isNsfw // ignore: cast_nullable_to_non_nullable
              as bool,
      animationUrl: null == animationUrl
          ? _value.animationUrl
          : animationUrl // ignore: cast_nullable_to_non_nullable
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
              as List<OwnerDto>,
      traits: null == traits
          ? _value._traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<TraitDto>,
      rarity: freezed == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as RarityDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NftDtoImpl extends _NftDto {
  const _$NftDtoImpl(
      {this.identifier = '',
      this.collection = '',
      this.contract = '',
      this.tokenStandard = '',
      this.name = '',
      this.description = '',
      @JsonKey(name: 'image_url') this.imageUrl = '',
      this.metadataUrl = '',
      this.updatedAt = '',
      this.isDisabled = false,
      this.isNsfw = false,
      this.animationUrl = '',
      this.isSuspicious = false,
      this.creator = '',
      final List<OwnerDto> owners = const [],
      final List<TraitDto> traits = const [],
      this.rarity})
      : _owners = owners,
        _traits = traits,
        super._();

  factory _$NftDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NftDtoImplFromJson(json);

  /// Identifier for the NFT
  @override
  @JsonKey()
  final String identifier;

  /// Name of the NFT collection
  @override
  @JsonKey()
  final String collection;

  /// Contract address
  @override
  @JsonKey()
  final String contract;

  /// Token standard (e.g., erc721)
  @override
  @JsonKey()
  final String tokenStandard;

  /// NFT name
  @override
  @JsonKey()
  final String name;

  /// Description of the NFT
  @override
  @JsonKey()
  final String description;

  /// Image URL for the NFT
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  /// Metadata URL for the NFT
  @override
  @JsonKey()
  final String metadataUrl;

  /// Last update timestamp
  @override
  @JsonKey()
  final String updatedAt;

  /// If the NFT is disabled
  @override
  @JsonKey()
  final bool isDisabled;

  /// If the NFT is NSFW
  @override
  @JsonKey()
  final bool isNsfw;

  /// URL for any associated animation
  @override
  @JsonKey()
  final String animationUrl;

  /// Flag indicating if the NFT is considered suspicious
  @override
  @JsonKey()
  final bool isSuspicious;

  /// The creator's address
  @override
  @JsonKey()
  final String creator;

  /// List of owners of the NFT
  final List<OwnerDto> _owners;

  /// List of owners of the NFT
  @override
  @JsonKey()
  List<OwnerDto> get owners {
    if (_owners is EqualUnmodifiableListView) return _owners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_owners);
  }

  /// Associated traits of the NFT
  final List<TraitDto> _traits;

  /// Associated traits of the NFT
  @override
  @JsonKey()
  List<TraitDto> get traits {
    if (_traits is EqualUnmodifiableListView) return _traits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_traits);
  }

  /// Rarity data for the NFT
  @override
  final RarityDto? rarity;

  @override
  String toString() {
    return 'NftDto(identifier: $identifier, collection: $collection, contract: $contract, tokenStandard: $tokenStandard, name: $name, description: $description, imageUrl: $imageUrl, metadataUrl: $metadataUrl, updatedAt: $updatedAt, isDisabled: $isDisabled, isNsfw: $isNsfw, animationUrl: $animationUrl, isSuspicious: $isSuspicious, creator: $creator, owners: $owners, traits: $traits, rarity: $rarity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NftDtoImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.tokenStandard, tokenStandard) ||
                other.tokenStandard == tokenStandard) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.metadataUrl, metadataUrl) ||
                other.metadataUrl == metadataUrl) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled) &&
            (identical(other.isNsfw, isNsfw) || other.isNsfw == isNsfw) &&
            (identical(other.animationUrl, animationUrl) ||
                other.animationUrl == animationUrl) &&
            (identical(other.isSuspicious, isSuspicious) ||
                other.isSuspicious == isSuspicious) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            const DeepCollectionEquality().equals(other._owners, _owners) &&
            const DeepCollectionEquality().equals(other._traits, _traits) &&
            (identical(other.rarity, rarity) || other.rarity == rarity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      identifier,
      collection,
      contract,
      tokenStandard,
      name,
      description,
      imageUrl,
      metadataUrl,
      updatedAt,
      isDisabled,
      isNsfw,
      animationUrl,
      isSuspicious,
      creator,
      const DeepCollectionEquality().hash(_owners),
      const DeepCollectionEquality().hash(_traits),
      rarity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NftDtoImplCopyWith<_$NftDtoImpl> get copyWith =>
      __$$NftDtoImplCopyWithImpl<_$NftDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NftDtoImplToJson(
      this,
    );
  }
}

abstract class _NftDto extends NftDto {
  const factory _NftDto(
      {final String identifier,
      final String collection,
      final String contract,
      final String tokenStandard,
      final String name,
      final String description,
      @JsonKey(name: 'image_url') final String imageUrl,
      final String metadataUrl,
      final String updatedAt,
      final bool isDisabled,
      final bool isNsfw,
      final String animationUrl,
      final bool isSuspicious,
      final String creator,
      final List<OwnerDto> owners,
      final List<TraitDto> traits,
      final RarityDto? rarity}) = _$NftDtoImpl;
  const _NftDto._() : super._();

  factory _NftDto.fromJson(Map<String, dynamic> json) = _$NftDtoImpl.fromJson;

  @override

  /// Identifier for the NFT
  String get identifier;
  @override

  /// Name of the NFT collection
  String get collection;
  @override

  /// Contract address
  String get contract;
  @override

  /// Token standard (e.g., erc721)
  String get tokenStandard;
  @override

  /// NFT name
  String get name;
  @override

  /// Description of the NFT
  String get description;
  @override

  /// Image URL for the NFT
// ignore: invalid_annotation_target
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override

  /// Metadata URL for the NFT
  String get metadataUrl;
  @override

  /// Last update timestamp
  String get updatedAt;
  @override

  /// If the NFT is disabled
  bool get isDisabled;
  @override

  /// If the NFT is NSFW
  bool get isNsfw;
  @override

  /// URL for any associated animation
  String get animationUrl;
  @override

  /// Flag indicating if the NFT is considered suspicious
  bool get isSuspicious;
  @override

  /// The creator's address
  String get creator;
  @override

  /// List of owners of the NFT
  List<OwnerDto> get owners;
  @override

  /// Associated traits of the NFT
  List<TraitDto> get traits;
  @override

  /// Rarity data for the NFT
  RarityDto? get rarity;
  @override
  @JsonKey(ignore: true)
  _$$NftDtoImplCopyWith<_$NftDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NftsResponseDto _$NftsResponseDtoFromJson(Map<String, dynamic> json) {
  return _NftsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$NftsResponseDto {
  /// List of NFTs
  List<NftDto> get nfts => throw _privateConstructorUsedError;

  /// Next page token for pagination
  String get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NftsResponseDtoCopyWith<NftsResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftsResponseDtoCopyWith<$Res> {
  factory $NftsResponseDtoCopyWith(
          NftsResponseDto value, $Res Function(NftsResponseDto) then) =
      _$NftsResponseDtoCopyWithImpl<$Res, NftsResponseDto>;
  @useResult
  $Res call({List<NftDto> nfts, String next});
}

/// @nodoc
class _$NftsResponseDtoCopyWithImpl<$Res, $Val extends NftsResponseDto>
    implements $NftsResponseDtoCopyWith<$Res> {
  _$NftsResponseDtoCopyWithImpl(this._value, this._then);

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
              as List<NftDto>,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NftsResponseDtoImplCopyWith<$Res>
    implements $NftsResponseDtoCopyWith<$Res> {
  factory _$$NftsResponseDtoImplCopyWith(_$NftsResponseDtoImpl value,
          $Res Function(_$NftsResponseDtoImpl) then) =
      __$$NftsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NftDto> nfts, String next});
}

/// @nodoc
class __$$NftsResponseDtoImplCopyWithImpl<$Res>
    extends _$NftsResponseDtoCopyWithImpl<$Res, _$NftsResponseDtoImpl>
    implements _$$NftsResponseDtoImplCopyWith<$Res> {
  __$$NftsResponseDtoImplCopyWithImpl(
      _$NftsResponseDtoImpl _value, $Res Function(_$NftsResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nfts = null,
    Object? next = null,
  }) {
    return _then(_$NftsResponseDtoImpl(
      nfts: null == nfts
          ? _value._nfts
          : nfts // ignore: cast_nullable_to_non_nullable
              as List<NftDto>,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NftsResponseDtoImpl extends _NftsResponseDto {
  const _$NftsResponseDtoImpl(
      {final List<NftDto> nfts = const <NftDto>[], this.next = ''})
      : _nfts = nfts,
        super._();

  factory _$NftsResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NftsResponseDtoImplFromJson(json);

  /// List of NFTs
  final List<NftDto> _nfts;

  /// List of NFTs
  @override
  @JsonKey()
  List<NftDto> get nfts {
    if (_nfts is EqualUnmodifiableListView) return _nfts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nfts);
  }

  /// Next page token for pagination
  @override
  @JsonKey()
  final String next;

  @override
  String toString() {
    return 'NftsResponseDto(nfts: $nfts, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NftsResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._nfts, _nfts) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nfts), next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NftsResponseDtoImplCopyWith<_$NftsResponseDtoImpl> get copyWith =>
      __$$NftsResponseDtoImplCopyWithImpl<_$NftsResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NftsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _NftsResponseDto extends NftsResponseDto {
  const factory _NftsResponseDto({final List<NftDto> nfts, final String next}) =
      _$NftsResponseDtoImpl;
  const _NftsResponseDto._() : super._();

  factory _NftsResponseDto.fromJson(Map<String, dynamic> json) =
      _$NftsResponseDtoImpl.fromJson;

  @override

  /// List of NFTs
  List<NftDto> get nfts;
  @override

  /// Next page token for pagination
  String get next;
  @override
  @JsonKey(ignore: true)
  _$$NftsResponseDtoImplCopyWith<_$NftsResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NftWrapperDto _$NftWrapperDtoFromJson(Map<String, dynamic> json) {
  return _NftWrapperDto.fromJson(json);
}

/// @nodoc
mixin _$NftWrapperDto {
  NftDto get nft => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NftWrapperDtoCopyWith<NftWrapperDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftWrapperDtoCopyWith<$Res> {
  factory $NftWrapperDtoCopyWith(
          NftWrapperDto value, $Res Function(NftWrapperDto) then) =
      _$NftWrapperDtoCopyWithImpl<$Res, NftWrapperDto>;
  @useResult
  $Res call({NftDto nft});

  $NftDtoCopyWith<$Res> get nft;
}

/// @nodoc
class _$NftWrapperDtoCopyWithImpl<$Res, $Val extends NftWrapperDto>
    implements $NftWrapperDtoCopyWith<$Res> {
  _$NftWrapperDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nft = null,
  }) {
    return _then(_value.copyWith(
      nft: null == nft
          ? _value.nft
          : nft // ignore: cast_nullable_to_non_nullable
              as NftDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NftDtoCopyWith<$Res> get nft {
    return $NftDtoCopyWith<$Res>(_value.nft, (value) {
      return _then(_value.copyWith(nft: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NftWrapperDtoImplCopyWith<$Res>
    implements $NftWrapperDtoCopyWith<$Res> {
  factory _$$NftWrapperDtoImplCopyWith(
          _$NftWrapperDtoImpl value, $Res Function(_$NftWrapperDtoImpl) then) =
      __$$NftWrapperDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NftDto nft});

  @override
  $NftDtoCopyWith<$Res> get nft;
}

/// @nodoc
class __$$NftWrapperDtoImplCopyWithImpl<$Res>
    extends _$NftWrapperDtoCopyWithImpl<$Res, _$NftWrapperDtoImpl>
    implements _$$NftWrapperDtoImplCopyWith<$Res> {
  __$$NftWrapperDtoImplCopyWithImpl(
      _$NftWrapperDtoImpl _value, $Res Function(_$NftWrapperDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nft = null,
  }) {
    return _then(_$NftWrapperDtoImpl(
      nft: null == nft
          ? _value.nft
          : nft // ignore: cast_nullable_to_non_nullable
              as NftDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NftWrapperDtoImpl implements _NftWrapperDto {
  const _$NftWrapperDtoImpl({required this.nft});

  factory _$NftWrapperDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NftWrapperDtoImplFromJson(json);

  @override
  final NftDto nft;

  @override
  String toString() {
    return 'NftWrapperDto(nft: $nft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NftWrapperDtoImpl &&
            (identical(other.nft, nft) || other.nft == nft));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NftWrapperDtoImplCopyWith<_$NftWrapperDtoImpl> get copyWith =>
      __$$NftWrapperDtoImplCopyWithImpl<_$NftWrapperDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NftWrapperDtoImplToJson(
      this,
    );
  }
}

abstract class _NftWrapperDto implements NftWrapperDto {
  const factory _NftWrapperDto({required final NftDto nft}) =
      _$NftWrapperDtoImpl;

  factory _NftWrapperDto.fromJson(Map<String, dynamic> json) =
      _$NftWrapperDtoImpl.fromJson;

  @override
  NftDto get nft;
  @override
  @JsonKey(ignore: true)
  _$$NftWrapperDtoImplCopyWith<_$NftWrapperDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
