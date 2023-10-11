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
  String get imageUrl => throw _privateConstructorUsedError;

  /// Metadata URL for the NFT
  String get metadataUrl => throw _privateConstructorUsedError;

  /// Creation timestamp
  String get createdAt => throw _privateConstructorUsedError;

  /// Last update timestamp
  String get updatedAt => throw _privateConstructorUsedError;

  /// If the NFT is disabled
  bool get isDisabled => throw _privateConstructorUsedError;

  /// If the NFT is NSFW
  bool get isNsfw => throw _privateConstructorUsedError;

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
      String imageUrl,
      String metadataUrl,
      String createdAt,
      String updatedAt,
      bool isDisabled,
      bool isNsfw});
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
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDisabled = null,
    Object? isNsfw = null,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
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
      String imageUrl,
      String metadataUrl,
      String createdAt,
      String updatedAt,
      bool isDisabled,
      bool isNsfw});
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
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDisabled = null,
    Object? isNsfw = null,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
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
      this.imageUrl = '',
      this.metadataUrl = '',
      this.createdAt = '',
      this.updatedAt = '',
      this.isDisabled = false,
      this.isNsfw = false})
      : super._();

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
  @override
  @JsonKey()
  final String imageUrl;

  /// Metadata URL for the NFT
  @override
  @JsonKey()
  final String metadataUrl;

  /// Creation timestamp
  @override
  @JsonKey()
  final String createdAt;

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

  @override
  String toString() {
    return 'NftDto(identifier: $identifier, collection: $collection, contract: $contract, tokenStandard: $tokenStandard, name: $name, description: $description, imageUrl: $imageUrl, metadataUrl: $metadataUrl, createdAt: $createdAt, updatedAt: $updatedAt, isDisabled: $isDisabled, isNsfw: $isNsfw)';
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled) &&
            (identical(other.isNsfw, isNsfw) || other.isNsfw == isNsfw));
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
      createdAt,
      updatedAt,
      isDisabled,
      isNsfw);

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
      final String imageUrl,
      final String metadataUrl,
      final String createdAt,
      final String updatedAt,
      final bool isDisabled,
      final bool isNsfw}) = _$NftDtoImpl;
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
  String get imageUrl;
  @override

  /// Metadata URL for the NFT
  String get metadataUrl;
  @override

  /// Creation timestamp
  String get createdAt;
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
