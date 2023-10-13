// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nft_details_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NftDetailsViewModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NftDetailsViewModelCopyWith<NftDetailsViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftDetailsViewModelCopyWith<$Res> {
  factory $NftDetailsViewModelCopyWith(
          NftDetailsViewModel value, $Res Function(NftDetailsViewModel) then) =
      _$NftDetailsViewModelCopyWithImpl<$Res, NftDetailsViewModel>;
  @useResult
  $Res call({String name, String description, String imageUrl});
}

/// @nodoc
class _$NftDetailsViewModelCopyWithImpl<$Res, $Val extends NftDetailsViewModel>
    implements $NftDetailsViewModelCopyWith<$Res> {
  _$NftDetailsViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NftDetailsViewModelImplCopyWith<$Res>
    implements $NftDetailsViewModelCopyWith<$Res> {
  factory _$$NftDetailsViewModelImplCopyWith(_$NftDetailsViewModelImpl value,
          $Res Function(_$NftDetailsViewModelImpl) then) =
      __$$NftDetailsViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, String imageUrl});
}

/// @nodoc
class __$$NftDetailsViewModelImplCopyWithImpl<$Res>
    extends _$NftDetailsViewModelCopyWithImpl<$Res, _$NftDetailsViewModelImpl>
    implements _$$NftDetailsViewModelImplCopyWith<$Res> {
  __$$NftDetailsViewModelImplCopyWithImpl(_$NftDetailsViewModelImpl _value,
      $Res Function(_$NftDetailsViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
  }) {
    return _then(_$NftDetailsViewModelImpl(
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
    ));
  }
}

/// @nodoc

class _$NftDetailsViewModelImpl extends _NftDetailsViewModel {
  const _$NftDetailsViewModelImpl(
      {this.name = '', this.description = '', this.imageUrl = ''})
      : super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String imageUrl;

  @override
  String toString() {
    return 'NftDetailsViewModel(name: $name, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NftDetailsViewModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NftDetailsViewModelImplCopyWith<_$NftDetailsViewModelImpl> get copyWith =>
      __$$NftDetailsViewModelImplCopyWithImpl<_$NftDetailsViewModelImpl>(
          this, _$identity);
}

abstract class _NftDetailsViewModel extends NftDetailsViewModel {
  const factory _NftDetailsViewModel(
      {final String name,
      final String description,
      final String imageUrl}) = _$NftDetailsViewModelImpl;
  const _NftDetailsViewModel._() : super._();

  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$NftDetailsViewModelImplCopyWith<_$NftDetailsViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
