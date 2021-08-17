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
class _$TaskTearOff {
  const _$TaskTearOff();

  _Task call(
      {UniqueId? id,
      TaskTitle? title,
      bool isDone = false,
      Priority priority = 0,
      Description? description,
      DateTime? startDate,
      DateTime? dueDate,
      Reminder? reminder,
      required SubtaskList<Subtask> subtasks}) {
    return _Task(
      id: id,
      title: title,
      isDone: isDone,
      priority: priority,
      description: description,
      startDate: startDate,
      dueDate: dueDate,
      reminder: reminder,
      subtasks: subtasks,
    );
  }
}

/// @nodoc
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  UniqueId? get id =>
      throw _privateConstructorUsedError; //@Default("InboxUuid") UniqueId listId,
  TaskTitle? get title => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  Priority get priority => throw _privateConstructorUsedError;
  Description? get description => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  Reminder? get reminder =>
      throw _privateConstructorUsedError; //List<Tag> tags,
  SubtaskList<Subtask> get subtasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      TaskTitle? title,
      bool isDone,
      Priority priority,
      Description? description,
      DateTime? startDate,
      DateTime? dueDate,
      Reminder? reminder,
      SubtaskList<Subtask> subtasks});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

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
      subtasks: subtasks == freezed
          ? _value.subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as SubtaskList<Subtask>,
    ));
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
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
      SubtaskList<Subtask> subtasks});
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

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
    Object? subtasks = freezed,
  }) {
    return _then(_Task(
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
      subtasks: subtasks == freezed
          ? _value.subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as SubtaskList<Subtask>,
    ));
  }
}

/// @nodoc

class _$_Task extends _Task {
  const _$_Task(
      {this.id,
      this.title,
      this.isDone = false,
      this.priority = 0,
      this.description,
      this.startDate,
      this.dueDate,
      this.reminder,
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
  @override //List<Tag> tags,
  final SubtaskList<Subtask> subtasks;

  @override
  String toString() {
    return 'Task(id: $id, title: $title, isDone: $isDone, priority: $priority, description: $description, startDate: $startDate, dueDate: $dueDate, reminder: $reminder, subtasks: $subtasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Task &&
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
      const DeepCollectionEquality().hash(subtasks);

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);
}

abstract class _Task extends Task {
  const factory _Task(
      {UniqueId? id,
      TaskTitle? title,
      bool isDone,
      Priority priority,
      Description? description,
      DateTime? startDate,
      DateTime? dueDate,
      Reminder? reminder,
      required SubtaskList<Subtask> subtasks}) = _$_Task;
  const _Task._() : super._();

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
  @override //List<Tag> tags,
  SubtaskList<Subtask> get subtasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith => throw _privateConstructorUsedError;
}