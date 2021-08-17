// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subtask_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubtaskPrimitiveTearOff {
  const _$SubtaskPrimitiveTearOff();

  _SubtaskPrimitive call({UniqueId? id, String? title, bool? isDone}) {
    return _SubtaskPrimitive(
      id: id,
      title: title,
      isDone: isDone,
    );
  }
}

/// @nodoc
const $SubtaskPrimitive = _$SubtaskPrimitiveTearOff();

/// @nodoc
mixin _$SubtaskPrimitive {
  UniqueId? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get isDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubtaskPrimitiveCopyWith<SubtaskPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtaskPrimitiveCopyWith<$Res> {
  factory $SubtaskPrimitiveCopyWith(
          SubtaskPrimitive value, $Res Function(SubtaskPrimitive) then) =
      _$SubtaskPrimitiveCopyWithImpl<$Res>;
  $Res call({UniqueId? id, String? title, bool? isDone});
}

/// @nodoc
class _$SubtaskPrimitiveCopyWithImpl<$Res>
    implements $SubtaskPrimitiveCopyWith<$Res> {
  _$SubtaskPrimitiveCopyWithImpl(this._value, this._then);

  final SubtaskPrimitive _value;
  // ignore: unused_field
  final $Res Function(SubtaskPrimitive) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
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
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SubtaskPrimitiveCopyWith<$Res>
    implements $SubtaskPrimitiveCopyWith<$Res> {
  factory _$SubtaskPrimitiveCopyWith(
          _SubtaskPrimitive value, $Res Function(_SubtaskPrimitive) then) =
      __$SubtaskPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId? id, String? title, bool? isDone});
}

/// @nodoc
class __$SubtaskPrimitiveCopyWithImpl<$Res>
    extends _$SubtaskPrimitiveCopyWithImpl<$Res>
    implements _$SubtaskPrimitiveCopyWith<$Res> {
  __$SubtaskPrimitiveCopyWithImpl(
      _SubtaskPrimitive _value, $Res Function(_SubtaskPrimitive) _then)
      : super(_value, (v) => _then(v as _SubtaskPrimitive));

  @override
  _SubtaskPrimitive get _value => super._value as _SubtaskPrimitive;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_SubtaskPrimitive(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_SubtaskPrimitive extends _SubtaskPrimitive {
  const _$_SubtaskPrimitive({this.id, this.title, this.isDone}) : super._();

  @override
  final UniqueId? id;
  @override
  final String? title;
  @override
  final bool? isDone;

  @override
  String toString() {
    return 'SubtaskPrimitive(id: $id, title: $title, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubtaskPrimitive &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isDone, isDone) ||
                const DeepCollectionEquality().equals(other.isDone, isDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isDone);

  @JsonKey(ignore: true)
  @override
  _$SubtaskPrimitiveCopyWith<_SubtaskPrimitive> get copyWith =>
      __$SubtaskPrimitiveCopyWithImpl<_SubtaskPrimitive>(this, _$identity);
}

abstract class _SubtaskPrimitive extends SubtaskPrimitive {
  const factory _SubtaskPrimitive({UniqueId? id, String? title, bool? isDone}) =
      _$_SubtaskPrimitive;
  const _SubtaskPrimitive._() : super._();

  @override
  UniqueId? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  bool? get isDone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubtaskPrimitiveCopyWith<_SubtaskPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}
