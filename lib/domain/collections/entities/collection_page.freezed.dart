// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionPage {
  List<Collection> get collections => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionPageCopyWith<CollectionPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionPageCopyWith<$Res> {
  factory $CollectionPageCopyWith(
          CollectionPage value, $Res Function(CollectionPage) then) =
      _$CollectionPageCopyWithImpl<$Res, CollectionPage>;
  @useResult
  $Res call({List<Collection> collections, String next});
}

/// @nodoc
class _$CollectionPageCopyWithImpl<$Res, $Val extends CollectionPage>
    implements $CollectionPageCopyWith<$Res> {
  _$CollectionPageCopyWithImpl(this._value, this._then);

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
              as List<Collection>,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionPageImplCopyWith<$Res>
    implements $CollectionPageCopyWith<$Res> {
  factory _$$CollectionPageImplCopyWith(_$CollectionPageImpl value,
          $Res Function(_$CollectionPageImpl) then) =
      __$$CollectionPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Collection> collections, String next});
}

/// @nodoc
class __$$CollectionPageImplCopyWithImpl<$Res>
    extends _$CollectionPageCopyWithImpl<$Res, _$CollectionPageImpl>
    implements _$$CollectionPageImplCopyWith<$Res> {
  __$$CollectionPageImplCopyWithImpl(
      _$CollectionPageImpl _value, $Res Function(_$CollectionPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collections = null,
    Object? next = null,
  }) {
    return _then(_$CollectionPageImpl(
      collections: null == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<Collection>,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CollectionPageImpl implements _CollectionPage {
  const _$CollectionPageImpl(
      {final List<Collection> collections = const [], this.next = ''})
      : _collections = collections;

  final List<Collection> _collections;
  @override
  @JsonKey()
  List<Collection> get collections {
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  @override
  @JsonKey()
  final String next;

  @override
  String toString() {
    return 'CollectionPage(collections: $collections, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionPageImpl &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections) &&
            (identical(other.next, next) || other.next == next));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_collections), next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionPageImplCopyWith<_$CollectionPageImpl> get copyWith =>
      __$$CollectionPageImplCopyWithImpl<_$CollectionPageImpl>(
          this, _$identity);
}

abstract class _CollectionPage implements CollectionPage {
  const factory _CollectionPage(
      {final List<Collection> collections,
      final String next}) = _$CollectionPageImpl;

  @override
  List<Collection> get collections;
  @override
  String get next;
  @override
  @JsonKey(ignore: true)
  _$$CollectionPageImplCopyWith<_$CollectionPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
