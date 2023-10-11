// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionViewModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionViewModelCopyWith<CollectionViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionViewModelCopyWith<$Res> {
  factory $CollectionViewModelCopyWith(
          CollectionViewModel value, $Res Function(CollectionViewModel) then) =
      _$CollectionViewModelCopyWithImpl<$Res, CollectionViewModel>;
  @useResult
  $Res call({String name, String description, String imagePath});
}

/// @nodoc
class _$CollectionViewModelCopyWithImpl<$Res, $Val extends CollectionViewModel>
    implements $CollectionViewModelCopyWith<$Res> {
  _$CollectionViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? imagePath = null,
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
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionViewModelImplCopyWith<$Res>
    implements $CollectionViewModelCopyWith<$Res> {
  factory _$$CollectionViewModelImplCopyWith(_$CollectionViewModelImpl value,
          $Res Function(_$CollectionViewModelImpl) then) =
      __$$CollectionViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, String imagePath});
}

/// @nodoc
class __$$CollectionViewModelImplCopyWithImpl<$Res>
    extends _$CollectionViewModelCopyWithImpl<$Res, _$CollectionViewModelImpl>
    implements _$$CollectionViewModelImplCopyWith<$Res> {
  __$$CollectionViewModelImplCopyWithImpl(_$CollectionViewModelImpl _value,
      $Res Function(_$CollectionViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? imagePath = null,
  }) {
    return _then(_$CollectionViewModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CollectionViewModelImpl extends _CollectionViewModel {
  const _$CollectionViewModelImpl(
      {this.name = '', this.description = '', this.imagePath = ''})
      : super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String imagePath;

  @override
  String toString() {
    return 'CollectionViewModel(name: $name, description: $description, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionViewModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionViewModelImplCopyWith<_$CollectionViewModelImpl> get copyWith =>
      __$$CollectionViewModelImplCopyWithImpl<_$CollectionViewModelImpl>(
          this, _$identity);
}

abstract class _CollectionViewModel extends CollectionViewModel {
  const factory _CollectionViewModel(
      {final String name,
      final String description,
      final String imagePath}) = _$CollectionViewModelImpl;
  const _CollectionViewModel._() : super._();

  @override
  String get name;
  @override
  String get description;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$CollectionViewModelImplCopyWith<_$CollectionViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
