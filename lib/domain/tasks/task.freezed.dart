// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskEntityTearOff {
  const _$TaskEntityTearOff();

  _TaskEntity call(
      {UniqueId? id,
      TaskTitle? title,
      bool isDone = false,
      Priority priority = 0,
      Description? description,
      DateTime? startDate,
      DateTime? dueDate,
      Reminder? reminder,
      required TagList<Tag> tags,
      required SubtaskList<Subtask> subtasks}) {
    return _TaskEntity(
      id: id,
      title: title,
      isDone: isDone,
      priority: priority,
      description: description,
      startDate: startDate,
      dueDate: dueDate,
      reminder: reminder,
      tags: tags,
      subtasks: subtasks,
    );
  }
}

/// @nodoc
const $TaskEntity = _$TaskEntityTearOff();

/// @nodoc
mixin _$TaskEntity {
  UniqueId? get id =>
      throw _privateConstructorUsedError; //@Default("InboxUuid") UniqueId listId,
  TaskTitle? get title => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  Priority get priority => throw _privateConstructorUsedError;
  Description? get description => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  Reminder? get reminder => throw _privateConstructorUsedError;
  TagList<Tag> get tags => throw _privateConstructorUsedError;
  SubtaskList<Subtask> get subtasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEntityCopyWith<TaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEntityCopyWith<$Res> {
  factory $TaskEntityCopyWith(
          TaskEntity value, $Res Function(TaskEntity) then) =
      _$TaskEntityCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      TaskTitle? title,
      bool isDone,
      Priority priority,
      Description? description,
      DateTime? startDate,
      DateTime? dueDate,
      Reminder? reminder,
      TagList<Tag> tags,
      SubtaskList<Subtask> subtasks});
}

/// @nodoc
class _$TaskEntityCopyWithImpl<$Res> implements $TaskEntityCopyWith<$Res> {
  _$TaskEntityCopyWithImpl(this._value, this._then);

  final TaskEntity _value;
  // ignore: unused_field
  final $Res Function(TaskEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
    Object? priority = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? dueDate = freezed,
    Object? reminder = freezed,
    Object? tags = freezed,
    Object? subtasks = freezed,
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
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminder: reminder == freezed
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as Reminder?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as TagList<Tag>,
      subtasks: subtasks == freezed
          ? _value.subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as SubtaskList<Subtask>,
    ));
  }
}

/// @nodoc
abstract class _$TaskEntityCopyWith<$Res> implements $TaskEntityCopyWith<$Res> {
  factory _$TaskEntityCopyWith(
          _TaskEntity value, $Res Function(_TaskEntity) then) =
      __$TaskEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      TaskTitle? title,
      bool isDone,
      Priority priority,
      Description? description,
      DateTime? startDate,
      DateTime? dueDate,
      Reminder? reminder,
      TagList<Tag> tags,
      SubtaskList<Subtask> subtasks});
}

/// @nodoc
class __$TaskEntityCopyWithImpl<$Res> extends _$TaskEntityCopyWithImpl<$Res>
    implements _$TaskEntityCopyWith<$Res> {
  __$TaskEntityCopyWithImpl(
      _TaskEntity _value, $Res Function(_TaskEntity) _then)
      : super(_value, (v) => _then(v as _TaskEntity));

  @override
  _TaskEntity get _value => super._value as _TaskEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
    Object? priority = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? dueDate = freezed,
    Object? reminder = freezed,
    Object? tags = freezed,
    Object? subtasks = freezed,
  }) {
    return _then(_TaskEntity(
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
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminder: reminder == freezed
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as Reminder?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as TagList<Tag>,
      subtasks: subtasks == freezed
          ? _value.subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as SubtaskList<Subtask>,
    ));
  }
}

/// @nodoc

class _$_TaskEntity extends _TaskEntity {
  const _$_TaskEntity(
      {this.id,
      this.title,
      this.isDone = false,
      this.priority = 0,
      this.description,
      this.startDate,
      this.dueDate,
      this.reminder,
      required this.tags,
      required this.subtasks})
      : super._();

  @override
  final UniqueId? id;
  @override //@Default("InboxUuid") UniqueId listId,
  final TaskTitle? title;
  @JsonKey(defaultValue: false)
  @override
  final bool isDone;
  @JsonKey(defaultValue: 0)
  @override
  final Priority priority;
  @override
  final Description? description;
  @override
  final DateTime? startDate;
  @override
  final DateTime? dueDate;
  @override
  final Reminder? reminder;
  @override
  final TagList<Tag> tags;
  @override
  final SubtaskList<Subtask> subtasks;

  @override
  String toString() {
    return 'TaskEntity(id: $id, title: $title, isDone: $isDone, priority: $priority, description: $description, startDate: $startDate, dueDate: $dueDate, reminder: $reminder, tags: $tags, subtasks: $subtasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isDone, isDone) ||
                const DeepCollectionEquality().equals(other.isDone, isDone)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.reminder, reminder) ||
                const DeepCollectionEquality()
                    .equals(other.reminder, reminder)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.subtasks, subtasks) ||
                const DeepCollectionEquality()
                    .equals(other.subtasks, subtasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isDone) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(reminder) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(subtasks);

  @JsonKey(ignore: true)
  @override
  _$TaskEntityCopyWith<_TaskEntity> get copyWith =>
      __$TaskEntityCopyWithImpl<_TaskEntity>(this, _$identity);
}

abstract class _TaskEntity extends TaskEntity {
  const factory _TaskEntity(
      {UniqueId? id,
      TaskTitle? title,
      bool isDone,
      Priority priority,
      Description? description,
      DateTime? startDate,
      DateTime? dueDate,
      Reminder? reminder,
      required TagList<Tag> tags,
      required SubtaskList<Subtask> subtasks}) = _$_TaskEntity;
  const _TaskEntity._() : super._();

  @override
  UniqueId? get id => throw _privateConstructorUsedError;
  @override //@Default("InboxUuid") UniqueId listId,
  TaskTitle? get title => throw _privateConstructorUsedError;
  @override
  bool get isDone => throw _privateConstructorUsedError;
  @override
  Priority get priority => throw _privateConstructorUsedError;
  @override
  Description? get description => throw _privateConstructorUsedError;
  @override
  DateTime? get startDate => throw _privateConstructorUsedError;
  @override
  DateTime? get dueDate => throw _privateConstructorUsedError;
  @override
  Reminder? get reminder => throw _privateConstructorUsedError;
  @override
  TagList<Tag> get tags => throw _privateConstructorUsedError;
  @override
  SubtaskList<Subtask> get subtasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskEntityCopyWith<_TaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
