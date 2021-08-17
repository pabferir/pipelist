// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subtask.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubtaskTearOff {
  const _$SubtaskTearOff();

  _Subtask call({UniqueId? id, TaskTitle? title, bool isDone = false}) {
    return _Subtask(
      id: id,
      title: title,
      isDone: isDone,
    );
  }
}

/// @nodoc
const $Subtask = _$SubtaskTearOff();

/// @nodoc
mixin _$Subtask {
  UniqueId? get id => throw _privateConstructorUsedError;
  TaskTitle? get title => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubtaskCopyWith<Subtask> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtaskCopyWith<$Res> {
  factory $SubtaskCopyWith(Subtask value, $Res Function(Subtask) then) =
      _$SubtaskCopyWithImpl<$Res>;
  $Res call({UniqueId? id, TaskTitle? title, bool isDone});
}

/// @nodoc
class _$SubtaskCopyWithImpl<$Res> implements $SubtaskCopyWith<$Res> {
  _$SubtaskCopyWithImpl(this._value, this._then);

  final Subtask _value;
  // ignore: unused_field
  final $Res Function(Subtask) _then;

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
              as TaskTitle?,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SubtaskCopyWith<$Res> implements $SubtaskCopyWith<$Res> {
  factory _$SubtaskCopyWith(_Subtask value, $Res Function(_Subtask) then) =
      __$SubtaskCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId? id, TaskTitle? title, bool isDone});
}

/// @nodoc
class __$SubtaskCopyWithImpl<$Res> extends _$SubtaskCopyWithImpl<$Res>
    implements _$SubtaskCopyWith<$Res> {
  __$SubtaskCopyWithImpl(_Subtask _value, $Res Function(_Subtask) _then)
      : super(_value, (v) => _then(v as _Subtask));

  @override
  _Subtask get _value => super._value as _Subtask;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_Subtask(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TaskTitle?,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Subtask extends _Subtask {
  const _$_Subtask({this.id, this.title, this.isDone = false}) : super._();

  @override
  final UniqueId? id;
  @override
  final TaskTitle? title;
  @JsonKey(defaultValue: false)
  @override
  final bool isDone;

  @override
  String toString() {
    return 'Subtask(id: $id, title: $title, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subtask &&
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
  _$SubtaskCopyWith<_Subtask> get copyWith =>
      __$SubtaskCopyWithImpl<_Subtask>(this, _$identity);
}

abstract class _Subtask extends Subtask {
  const factory _Subtask({UniqueId? id, TaskTitle? title, bool isDone}) =
      _$_Subtask;
  const _Subtask._() : super._();

  @override
  UniqueId? get id => throw _privateConstructorUsedError;
  @override
  TaskTitle? get title => throw _privateConstructorUsedError;
  @override
  bool get isDone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubtaskCopyWith<_Subtask> get copyWith =>
      throw _privateConstructorUsedError;
}
