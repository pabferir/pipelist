// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tag_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TagPrimitiveTearOff {
  const _$TagPrimitiveTearOff();

  _TagPrimitive call({UniqueId? id, String? title}) {
    return _TagPrimitive(
      id: id,
      title: title,
    );
  }
}

/// @nodoc
const $TagPrimitive = _$TagPrimitiveTearOff();

/// @nodoc
mixin _$TagPrimitive {
  UniqueId? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagPrimitiveCopyWith<TagPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagPrimitiveCopyWith<$Res> {
  factory $TagPrimitiveCopyWith(
          TagPrimitive value, $Res Function(TagPrimitive) then) =
      _$TagPrimitiveCopyWithImpl<$Res>;
  $Res call({UniqueId? id, String? title});
}

/// @nodoc
class _$TagPrimitiveCopyWithImpl<$Res> implements $TagPrimitiveCopyWith<$Res> {
  _$TagPrimitiveCopyWithImpl(this._value, this._then);

  final TagPrimitive _value;
  // ignore: unused_field
  final $Res Function(TagPrimitive) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TagPrimitiveCopyWith<$Res>
    implements $TagPrimitiveCopyWith<$Res> {
  factory _$TagPrimitiveCopyWith(
          _TagPrimitive value, $Res Function(_TagPrimitive) then) =
      __$TagPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId? id, String? title});
}

/// @nodoc
class __$TagPrimitiveCopyWithImpl<$Res> extends _$TagPrimitiveCopyWithImpl<$Res>
    implements _$TagPrimitiveCopyWith<$Res> {
  __$TagPrimitiveCopyWithImpl(
      _TagPrimitive _value, $Res Function(_TagPrimitive) _then)
      : super(_value, (v) => _then(v as _TagPrimitive));

  @override
  _TagPrimitive get _value => super._value as _TagPrimitive;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_TagPrimitive(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TagPrimitive extends _TagPrimitive {
  const _$_TagPrimitive({this.id, this.title}) : super._();

  @override
  final UniqueId? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'TagPrimitive(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagPrimitive &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$TagPrimitiveCopyWith<_TagPrimitive> get copyWith =>
      __$TagPrimitiveCopyWithImpl<_TagPrimitive>(this, _$identity);
}

abstract class _TagPrimitive extends TagPrimitive {
  const factory _TagPrimitive({UniqueId? id, String? title}) = _$_TagPrimitive;
  const _TagPrimitive._() : super._();

  @override
  UniqueId? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TagPrimitiveCopyWith<_TagPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}
