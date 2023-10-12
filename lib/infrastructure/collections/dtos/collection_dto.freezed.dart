// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CollectionsResponseDto _$CollectionsResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _CollectionsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CollectionsResponseDto {
  /// List of collections
  List<CollectionDto> get collections => throw _privateConstructorUsedError;

  /// Pagination info
  String get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionsResponseDtoCopyWith<CollectionsResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionsResponseDtoCopyWith<$Res> {
  factory $CollectionsResponseDtoCopyWith(CollectionsResponseDto value,
          $Res Function(CollectionsResponseDto) then) =
      _$CollectionsResponseDtoCopyWithImpl<$Res, CollectionsResponseDto>;
  @useResult
  $Res call({List<CollectionDto> collections, String next});
}

/// @nodoc
class _$CollectionsResponseDtoCopyWithImpl<$Res,
        $Val extends CollectionsResponseDto>
    implements $CollectionsResponseDtoCopyWith<$Res> {
  _$CollectionsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collections = null,
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      collections: null == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<CollectionDto>,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionsResponseDtoImplCopyWith<$Res>
    implements $CollectionsResponseDtoCopyWith<$Res> {
  factory _$$CollectionsResponseDtoImplCopyWith(
          _$CollectionsResponseDtoImpl value,
          $Res Function(_$CollectionsResponseDtoImpl) then) =
      __$$CollectionsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CollectionDto> collections, String next});
}

/// @nodoc
class __$$CollectionsResponseDtoImplCopyWithImpl<$Res>
    extends _$CollectionsResponseDtoCopyWithImpl<$Res,
        _$CollectionsResponseDtoImpl>
    implements _$$CollectionsResponseDtoImplCopyWith<$Res> {
  __$$CollectionsResponseDtoImplCopyWithImpl(
      _$CollectionsResponseDtoImpl _value,
      $Res Function(_$CollectionsResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collections = null,
    Object? next = null,
  }) {
    return _then(_$CollectionsResponseDtoImpl(
      collections: null == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<CollectionDto>,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionsResponseDtoImpl extends _CollectionsResponseDto {
  const _$CollectionsResponseDtoImpl(
      {final List<CollectionDto> collections = const <CollectionDto>[],
      this.next = ''})
      : _collections = collections,
        super._();

  factory _$CollectionsResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionsResponseDtoImplFromJson(json);

  /// List of collections
  final List<CollectionDto> _collections;

  /// List of collections
  @override
  @JsonKey()
  List<CollectionDto> get collections {
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  /// Pagination info
  @override
  @JsonKey()
  final String next;

  @override
  String toString() {
    return 'CollectionsResponseDto(collections: $collections, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionsResponseDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_collections), next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionsResponseDtoImplCopyWith<_$CollectionsResponseDtoImpl>
      get copyWith => __$$CollectionsResponseDtoImplCopyWithImpl<
          _$CollectionsResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _CollectionsResponseDto extends CollectionsResponseDto {
  const factory _CollectionsResponseDto(
      {final List<CollectionDto> collections,
      final String next}) = _$CollectionsResponseDtoImpl;
  const _CollectionsResponseDto._() : super._();

  factory _CollectionsResponseDto.fromJson(Map<String, dynamic> json) =
      _$CollectionsResponseDtoImpl.fromJson;

  @override

  /// List of collections
  List<CollectionDto> get collections;
  @override

  /// Pagination info
  String get next;
  @override
  @JsonKey(ignore: true)
  _$$CollectionsResponseDtoImplCopyWith<_$CollectionsResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CollectionDto _$CollectionDtoFromJson(Map<String, dynamic> json) {
  return _CollectionDto.fromJson(json);
}

/// @nodoc
mixin _$CollectionDto {
  /// Unique identifier of the collection
  String get collection => throw _privateConstructorUsedError;

  /// Human-readable name
  String get name => throw _privateConstructorUsedError;

  /// Description of the collection
  String get description => throw _privateConstructorUsedError;

  ///  Link to the NFTs original image. This may be an HTTP url, SVG data,
  ///  or other directly embedded data.
// ignore: invalid_annotation_target
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  /// Owner of the collection
  String get owner => throw _privateConstructorUsedError;

  /// Safelist status
  String get safelistStatus => throw _privateConstructorUsedError;

  /// Category
  String get category => throw _privateConstructorUsedError;

  /// If the collection is disabled
  bool get isDisabled => throw _privateConstructorUsedError;

  /// If the collection is NSFW
  bool get isNsfw => throw _privateConstructorUsedError;

  /// Trait offers enabled or not
  bool? get traitOffersEnabled => throw _privateConstructorUsedError;

  /// OpenSea URL
  String get openseaUrl => throw _privateConstructorUsedError;

  /// Project URL
  String get projectUrl => throw _privateConstructorUsedError;

  /// Wiki URL
  String get wikiUrl => throw _privateConstructorUsedError;

  /// Discord URL
  String get discordUrl => throw _privateConstructorUsedError;

  /// Telegram URL
  String get telegramUrl => throw _privateConstructorUsedError;

  /// Twitter username
  String get twitterUsername => throw _privateConstructorUsedError;

  /// Instagram username
  String get instagramUsername => throw _privateConstructorUsedError;

  /// Contract details
  List<ContractDto> get contracts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionDtoCopyWith<CollectionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionDtoCopyWith<$Res> {
  factory $CollectionDtoCopyWith(
          CollectionDto value, $Res Function(CollectionDto) then) =
      _$CollectionDtoCopyWithImpl<$Res, CollectionDto>;
  @useResult
  $Res call(
      {String collection,
      String name,
      String description,
      @JsonKey(name: 'image_url') String imageUrl,
      String owner,
      String safelistStatus,
      String category,
      bool isDisabled,
      bool isNsfw,
      bool? traitOffersEnabled,
      String openseaUrl,
      String projectUrl,
      String wikiUrl,
      String discordUrl,
      String telegramUrl,
      String twitterUsername,
      String instagramUsername,
      List<ContractDto> contracts});
}

/// @nodoc
class _$CollectionDtoCopyWithImpl<$Res, $Val extends CollectionDto>
    implements $CollectionDtoCopyWith<$Res> {
  _$CollectionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? owner = null,
    Object? safelistStatus = null,
    Object? category = null,
    Object? isDisabled = null,
    Object? isNsfw = null,
    Object? traitOffersEnabled = freezed,
    Object? openseaUrl = null,
    Object? projectUrl = null,
    Object? wikiUrl = null,
    Object? discordUrl = null,
    Object? telegramUrl = null,
    Object? twitterUsername = null,
    Object? instagramUsername = null,
    Object? contracts = null,
  }) {
    return _then(_value.copyWith(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
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
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      safelistStatus: null == safelistStatus
          ? _value.safelistStatus
          : safelistStatus // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      isDisabled: null == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isNsfw: null == isNsfw
          ? _value.isNsfw
          : isNsfw // ignore: cast_nullable_to_non_nullable
              as bool,
      traitOffersEnabled: freezed == traitOffersEnabled
          ? _value.traitOffersEnabled
          : traitOffersEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      openseaUrl: null == openseaUrl
          ? _value.openseaUrl
          : openseaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      projectUrl: null == projectUrl
          ? _value.projectUrl
          : projectUrl // ignore: cast_nullable_to_non_nullable
              as String,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      discordUrl: null == discordUrl
          ? _value.discordUrl
          : discordUrl // ignore: cast_nullable_to_non_nullable
              as String,
      telegramUrl: null == telegramUrl
          ? _value.telegramUrl
          : telegramUrl // ignore: cast_nullable_to_non_nullable
              as String,
      twitterUsername: null == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String,
      instagramUsername: null == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String,
      contracts: null == contracts
          ? _value.contracts
          : contracts // ignore: cast_nullable_to_non_nullable
              as List<ContractDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionDtoImplCopyWith<$Res>
    implements $CollectionDtoCopyWith<$Res> {
  factory _$$CollectionDtoImplCopyWith(
          _$CollectionDtoImpl value, $Res Function(_$CollectionDtoImpl) then) =
      __$$CollectionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String collection,
      String name,
      String description,
      @JsonKey(name: 'image_url') String imageUrl,
      String owner,
      String safelistStatus,
      String category,
      bool isDisabled,
      bool isNsfw,
      bool? traitOffersEnabled,
      String openseaUrl,
      String projectUrl,
      String wikiUrl,
      String discordUrl,
      String telegramUrl,
      String twitterUsername,
      String instagramUsername,
      List<ContractDto> contracts});
}

/// @nodoc
class __$$CollectionDtoImplCopyWithImpl<$Res>
    extends _$CollectionDtoCopyWithImpl<$Res, _$CollectionDtoImpl>
    implements _$$CollectionDtoImplCopyWith<$Res> {
  __$$CollectionDtoImplCopyWithImpl(
      _$CollectionDtoImpl _value, $Res Function(_$CollectionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? owner = null,
    Object? safelistStatus = null,
    Object? category = null,
    Object? isDisabled = null,
    Object? isNsfw = null,
    Object? traitOffersEnabled = freezed,
    Object? openseaUrl = null,
    Object? projectUrl = null,
    Object? wikiUrl = null,
    Object? discordUrl = null,
    Object? telegramUrl = null,
    Object? twitterUsername = null,
    Object? instagramUsername = null,
    Object? contracts = null,
  }) {
    return _then(_$CollectionDtoImpl(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
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
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      safelistStatus: null == safelistStatus
          ? _value.safelistStatus
          : safelistStatus // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      isDisabled: null == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isNsfw: null == isNsfw
          ? _value.isNsfw
          : isNsfw // ignore: cast_nullable_to_non_nullable
              as bool,
      traitOffersEnabled: freezed == traitOffersEnabled
          ? _value.traitOffersEnabled
          : traitOffersEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      openseaUrl: null == openseaUrl
          ? _value.openseaUrl
          : openseaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      projectUrl: null == projectUrl
          ? _value.projectUrl
          : projectUrl // ignore: cast_nullable_to_non_nullable
              as String,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      discordUrl: null == discordUrl
          ? _value.discordUrl
          : discordUrl // ignore: cast_nullable_to_non_nullable
              as String,
      telegramUrl: null == telegramUrl
          ? _value.telegramUrl
          : telegramUrl // ignore: cast_nullable_to_non_nullable
              as String,
      twitterUsername: null == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String,
      instagramUsername: null == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String,
      contracts: null == contracts
          ? _value._contracts
          : contracts // ignore: cast_nullable_to_non_nullable
              as List<ContractDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionDtoImpl extends _CollectionDto {
  const _$CollectionDtoImpl(
      {this.collection = '',
      this.name = '',
      this.description = '',
      @JsonKey(name: 'image_url') this.imageUrl = '',
      this.owner = '',
      this.safelistStatus = '',
      this.category = '',
      this.isDisabled = false,
      this.isNsfw = false,
      this.traitOffersEnabled = false,
      this.openseaUrl = '',
      this.projectUrl = '',
      this.wikiUrl = '',
      this.discordUrl = '',
      this.telegramUrl = '',
      this.twitterUsername = '',
      this.instagramUsername = '',
      final List<ContractDto> contracts = const []})
      : _contracts = contracts,
        super._();

  factory _$CollectionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionDtoImplFromJson(json);

  /// Unique identifier of the collection
  @override
  @JsonKey()
  final String collection;

  /// Human-readable name
  @override
  @JsonKey()
  final String name;

  /// Description of the collection
  @override
  @JsonKey()
  final String description;

  ///  Link to the NFTs original image. This may be an HTTP url, SVG data,
  ///  or other directly embedded data.
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  /// Owner of the collection
  @override
  @JsonKey()
  final String owner;

  /// Safelist status
  @override
  @JsonKey()
  final String safelistStatus;

  /// Category
  @override
  @JsonKey()
  final String category;

  /// If the collection is disabled
  @override
  @JsonKey()
  final bool isDisabled;

  /// If the collection is NSFW
  @override
  @JsonKey()
  final bool isNsfw;

  /// Trait offers enabled or not
  @override
  @JsonKey()
  final bool? traitOffersEnabled;

  /// OpenSea URL
  @override
  @JsonKey()
  final String openseaUrl;

  /// Project URL
  @override
  @JsonKey()
  final String projectUrl;

  /// Wiki URL
  @override
  @JsonKey()
  final String wikiUrl;

  /// Discord URL
  @override
  @JsonKey()
  final String discordUrl;

  /// Telegram URL
  @override
  @JsonKey()
  final String telegramUrl;

  /// Twitter username
  @override
  @JsonKey()
  final String twitterUsername;

  /// Instagram username
  @override
  @JsonKey()
  final String instagramUsername;

  /// Contract details
  final List<ContractDto> _contracts;

  /// Contract details
  @override
  @JsonKey()
  List<ContractDto> get contracts {
    if (_contracts is EqualUnmodifiableListView) return _contracts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contracts);
  }

  @override
  String toString() {
    return 'CollectionDto(collection: $collection, name: $name, description: $description, imageUrl: $imageUrl, owner: $owner, safelistStatus: $safelistStatus, category: $category, isDisabled: $isDisabled, isNsfw: $isNsfw, traitOffersEnabled: $traitOffersEnabled, openseaUrl: $openseaUrl, projectUrl: $projectUrl, wikiUrl: $wikiUrl, discordUrl: $discordUrl, telegramUrl: $telegramUrl, twitterUsername: $twitterUsername, instagramUsername: $instagramUsername, contracts: $contracts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionDtoImpl &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.safelistStatus, safelistStatus) ||
                other.safelistStatus == safelistStatus) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled) &&
            (identical(other.isNsfw, isNsfw) || other.isNsfw == isNsfw) &&
            (identical(other.traitOffersEnabled, traitOffersEnabled) ||
                other.traitOffersEnabled == traitOffersEnabled) &&
            (identical(other.openseaUrl, openseaUrl) ||
                other.openseaUrl == openseaUrl) &&
            (identical(other.projectUrl, projectUrl) ||
                other.projectUrl == projectUrl) &&
            (identical(other.wikiUrl, wikiUrl) || other.wikiUrl == wikiUrl) &&
            (identical(other.discordUrl, discordUrl) ||
                other.discordUrl == discordUrl) &&
            (identical(other.telegramUrl, telegramUrl) ||
                other.telegramUrl == telegramUrl) &&
            (identical(other.twitterUsername, twitterUsername) ||
                other.twitterUsername == twitterUsername) &&
            (identical(other.instagramUsername, instagramUsername) ||
                other.instagramUsername == instagramUsername) &&
            const DeepCollectionEquality()
                .equals(other._contracts, _contracts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      collection,
      name,
      description,
      imageUrl,
      owner,
      safelistStatus,
      category,
      isDisabled,
      isNsfw,
      traitOffersEnabled,
      openseaUrl,
      projectUrl,
      wikiUrl,
      discordUrl,
      telegramUrl,
      twitterUsername,
      instagramUsername,
      const DeepCollectionEquality().hash(_contracts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionDtoImplCopyWith<_$CollectionDtoImpl> get copyWith =>
      __$$CollectionDtoImplCopyWithImpl<_$CollectionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionDtoImplToJson(
      this,
    );
  }
}

abstract class _CollectionDto extends CollectionDto {
  const factory _CollectionDto(
      {final String collection,
      final String name,
      final String description,
      @JsonKey(name: 'image_url') final String imageUrl,
      final String owner,
      final String safelistStatus,
      final String category,
      final bool isDisabled,
      final bool isNsfw,
      final bool? traitOffersEnabled,
      final String openseaUrl,
      final String projectUrl,
      final String wikiUrl,
      final String discordUrl,
      final String telegramUrl,
      final String twitterUsername,
      final String instagramUsername,
      final List<ContractDto> contracts}) = _$CollectionDtoImpl;
  const _CollectionDto._() : super._();

  factory _CollectionDto.fromJson(Map<String, dynamic> json) =
      _$CollectionDtoImpl.fromJson;

  @override

  /// Unique identifier of the collection
  String get collection;
  @override

  /// Human-readable name
  String get name;
  @override

  /// Description of the collection
  String get description;
  @override

  ///  Link to the NFTs original image. This may be an HTTP url, SVG data,
  ///  or other directly embedded data.
// ignore: invalid_annotation_target
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override

  /// Owner of the collection
  String get owner;
  @override

  /// Safelist status
  String get safelistStatus;
  @override

  /// Category
  String get category;
  @override

  /// If the collection is disabled
  bool get isDisabled;
  @override

  /// If the collection is NSFW
  bool get isNsfw;
  @override

  /// Trait offers enabled or not
  bool? get traitOffersEnabled;
  @override

  /// OpenSea URL
  String get openseaUrl;
  @override

  /// Project URL
  String get projectUrl;
  @override

  /// Wiki URL
  String get wikiUrl;
  @override

  /// Discord URL
  String get discordUrl;
  @override

  /// Telegram URL
  String get telegramUrl;
  @override

  /// Twitter username
  String get twitterUsername;
  @override

  /// Instagram username
  String get instagramUsername;
  @override

  /// Contract details
  List<ContractDto> get contracts;
  @override
  @JsonKey(ignore: true)
  _$$CollectionDtoImplCopyWith<_$CollectionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractDto _$ContractDtoFromJson(Map<String, dynamic> json) {
  return _ContractDto.fromJson(json);
}

/// @nodoc
mixin _$ContractDto {
  /// Contract address
  String get address => throw _privateConstructorUsedError;

  /// Blockchain chain name
  String get chain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractDtoCopyWith<ContractDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractDtoCopyWith<$Res> {
  factory $ContractDtoCopyWith(
          ContractDto value, $Res Function(ContractDto) then) =
      _$ContractDtoCopyWithImpl<$Res, ContractDto>;
  @useResult
  $Res call({String address, String chain});
}

/// @nodoc
class _$ContractDtoCopyWithImpl<$Res, $Val extends ContractDto>
    implements $ContractDtoCopyWith<$Res> {
  _$ContractDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? chain = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractDtoImplCopyWith<$Res>
    implements $ContractDtoCopyWith<$Res> {
  factory _$$ContractDtoImplCopyWith(
          _$ContractDtoImpl value, $Res Function(_$ContractDtoImpl) then) =
      __$$ContractDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, String chain});
}

/// @nodoc
class __$$ContractDtoImplCopyWithImpl<$Res>
    extends _$ContractDtoCopyWithImpl<$Res, _$ContractDtoImpl>
    implements _$$ContractDtoImplCopyWith<$Res> {
  __$$ContractDtoImplCopyWithImpl(
      _$ContractDtoImpl _value, $Res Function(_$ContractDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? chain = null,
  }) {
    return _then(_$ContractDtoImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractDtoImpl extends _ContractDto {
  const _$ContractDtoImpl({this.address = '', this.chain = ''}) : super._();

  factory _$ContractDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractDtoImplFromJson(json);

  /// Contract address
  @override
  @JsonKey()
  final String address;

  /// Blockchain chain name
  @override
  @JsonKey()
  final String chain;

  @override
  String toString() {
    return 'ContractDto(address: $address, chain: $chain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractDtoImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.chain, chain) || other.chain == chain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, chain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractDtoImplCopyWith<_$ContractDtoImpl> get copyWith =>
      __$$ContractDtoImplCopyWithImpl<_$ContractDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractDtoImplToJson(
      this,
    );
  }
}

abstract class _ContractDto extends ContractDto {
  const factory _ContractDto({final String address, final String chain}) =
      _$ContractDtoImpl;
  const _ContractDto._() : super._();

  factory _ContractDto.fromJson(Map<String, dynamic> json) =
      _$ContractDtoImpl.fromJson;

  @override

  /// Contract address
  String get address;
  @override

  /// Blockchain chain name
  String get chain;
  @override
  @JsonKey(ignore: true)
  _$$ContractDtoImplCopyWith<_$ContractDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
