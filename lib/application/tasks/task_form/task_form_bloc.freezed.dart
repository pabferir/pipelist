// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskFormEventTearOff {
  const _$TaskFormEventTearOff();

  _Initialized initialized(Option<TaskEntity> initialTask) {
    return _Initialized(
      initialTask,
    );
  }

  _TitleChanged titleChanged(String newTitle) {
    return _TitleChanged(
      newTitle,
    );
  }

  _IsDoneChanged isDoneChanged(bool newIsDone) {
    return _IsDoneChanged(
      newIsDone,
    );
  }

  _PriorityChanged priorityChanged(int newPriority) {
    return _PriorityChanged(
      newPriority,
    );
  }

  _DescriptionChanged descriptionChanged(String newDescription) {
    return _DescriptionChanged(
      newDescription,
    );
  }

  _StartDateChanged startDateChanged(DateTime newStartDate) {
    return _StartDateChanged(
      newStartDate,
    );
  }

  _DueDateChanged dueDateChanged(DateTime newDueDate) {
    return _DueDateChanged(
      newDueDate,
    );
  }

  _ReminderChanged reminderChanged(DateTime newReminder) {
    return _ReminderChanged(
      newReminder,
    );
  }

  _TagsChanged tagsChanged(KtList<TagPrimitive> newTags) {
    return _TagsChanged(
      newTags,
    );
  }

  _SubtasksChanged subtasksChanged(KtList<SubtaskPrimitive> newSubtasks) {
    return _SubtasksChanged(
      newSubtasks,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $TaskFormEvent = _$TaskFormEventTearOff();

/// @nodoc
mixin _$TaskFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormEventCopyWith<$Res> {
  factory $TaskFormEventCopyWith(
          TaskFormEvent value, $Res Function(TaskFormEvent) then) =
      _$TaskFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskFormEventCopyWithImpl<$Res>
    implements $TaskFormEventCopyWith<$Res> {
  _$TaskFormEventCopyWithImpl(this._value, this._then);

  final TaskFormEvent _value;
  // ignore: unused_field
  final $Res Function(TaskFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<TaskEntity> initialTask});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialTask = freezed,
  }) {
    return _then(_Initialized(
      initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Option<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialTask);

  @override
  final Option<TaskEntity> initialTask;

  @override
  String toString() {
    return 'TaskFormEvent.initialized(initialTask: $initialTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialTask, initialTask) ||
                const DeepCollectionEquality()
                    .equals(other.initialTask, initialTask)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initialTask);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TaskFormEvent {
  const factory _Initialized(Option<TaskEntity> initialTask) = _$_Initialized;

  Option<TaskEntity> get initialTask => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String newTitle});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? newTitle = freezed,
  }) {
    return _then(_TitleChanged(
      newTitle == freezed
          ? _value.newTitle
          : newTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.newTitle);

  @override
  final String newTitle;

  @override
  String toString() {
    return 'TaskFormEvent.titleChanged(newTitle: $newTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.newTitle, newTitle) ||
                const DeepCollectionEquality()
                    .equals(other.newTitle, newTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newTitle);

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) {
    return titleChanged(newTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(newTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements TaskFormEvent {
  const factory _TitleChanged(String newTitle) = _$_TitleChanged;

  String get newTitle => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsDoneChangedCopyWith<$Res> {
  factory _$IsDoneChangedCopyWith(
          _IsDoneChanged value, $Res Function(_IsDoneChanged) then) =
      __$IsDoneChangedCopyWithImpl<$Res>;
  $Res call({bool newIsDone});
}

/// @nodoc
class __$IsDoneChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$IsDoneChangedCopyWith<$Res> {
  __$IsDoneChangedCopyWithImpl(
      _IsDoneChanged _value, $Res Function(_IsDoneChanged) _then)
      : super(_value, (v) => _then(v as _IsDoneChanged));

  @override
  _IsDoneChanged get _value => super._value as _IsDoneChanged;

  @override
  $Res call({
    Object? newIsDone = freezed,
  }) {
    return _then(_IsDoneChanged(
      newIsDone == freezed
          ? _value.newIsDone
          : newIsDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsDoneChanged implements _IsDoneChanged {
  const _$_IsDoneChanged(this.newIsDone);

  @override
  final bool newIsDone;

  @override
  String toString() {
    return 'TaskFormEvent.isDoneChanged(newIsDone: $newIsDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsDoneChanged &&
            (identical(other.newIsDone, newIsDone) ||
                const DeepCollectionEquality()
                    .equals(other.newIsDone, newIsDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newIsDone);

  @JsonKey(ignore: true)
  @override
  _$IsDoneChangedCopyWith<_IsDoneChanged> get copyWith =>
      __$IsDoneChangedCopyWithImpl<_IsDoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) {
    return isDoneChanged(newIsDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (isDoneChanged != null) {
      return isDoneChanged(newIsDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return isDoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (isDoneChanged != null) {
      return isDoneChanged(this);
    }
    return orElse();
  }
}

abstract class _IsDoneChanged implements TaskFormEvent {
  const factory _IsDoneChanged(bool newIsDone) = _$_IsDoneChanged;

  bool get newIsDone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsDoneChangedCopyWith<_IsDoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PriorityChangedCopyWith<$Res> {
  factory _$PriorityChangedCopyWith(
          _PriorityChanged value, $Res Function(_PriorityChanged) then) =
      __$PriorityChangedCopyWithImpl<$Res>;
  $Res call({int newPriority});
}

/// @nodoc
class __$PriorityChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$PriorityChangedCopyWith<$Res> {
  __$PriorityChangedCopyWithImpl(
      _PriorityChanged _value, $Res Function(_PriorityChanged) _then)
      : super(_value, (v) => _then(v as _PriorityChanged));

  @override
  _PriorityChanged get _value => super._value as _PriorityChanged;

  @override
  $Res call({
    Object? newPriority = freezed,
  }) {
    return _then(_PriorityChanged(
      newPriority == freezed
          ? _value.newPriority
          : newPriority // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PriorityChanged implements _PriorityChanged {
  const _$_PriorityChanged(this.newPriority);

  @override
  final int newPriority;

  @override
  String toString() {
    return 'TaskFormEvent.priorityChanged(newPriority: $newPriority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriorityChanged &&
            (identical(other.newPriority, newPriority) ||
                const DeepCollectionEquality()
                    .equals(other.newPriority, newPriority)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newPriority);

  @JsonKey(ignore: true)
  @override
  _$PriorityChangedCopyWith<_PriorityChanged> get copyWith =>
      __$PriorityChangedCopyWithImpl<_PriorityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) {
    return priorityChanged(newPriority);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (priorityChanged != null) {
      return priorityChanged(newPriority);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return priorityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (priorityChanged != null) {
      return priorityChanged(this);
    }
    return orElse();
  }
}

abstract class _PriorityChanged implements TaskFormEvent {
  const factory _PriorityChanged(int newPriority) = _$_PriorityChanged;

  int get newPriority => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PriorityChangedCopyWith<_PriorityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String newDescription});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? newDescription = freezed,
  }) {
    return _then(_DescriptionChanged(
      newDescription == freezed
          ? _value.newDescription
          : newDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.newDescription);

  @override
  final String newDescription;

  @override
  String toString() {
    return 'TaskFormEvent.descriptionChanged(newDescription: $newDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.newDescription, newDescription) ||
                const DeepCollectionEquality()
                    .equals(other.newDescription, newDescription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newDescription);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) {
    return descriptionChanged(newDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(newDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements TaskFormEvent {
  const factory _DescriptionChanged(String newDescription) =
      _$_DescriptionChanged;

  String get newDescription => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartDateChangedCopyWith<$Res> {
  factory _$StartDateChangedCopyWith(
          _StartDateChanged value, $Res Function(_StartDateChanged) then) =
      __$StartDateChangedCopyWithImpl<$Res>;
  $Res call({DateTime newStartDate});
}

/// @nodoc
class __$StartDateChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$StartDateChangedCopyWith<$Res> {
  __$StartDateChangedCopyWithImpl(
      _StartDateChanged _value, $Res Function(_StartDateChanged) _then)
      : super(_value, (v) => _then(v as _StartDateChanged));

  @override
  _StartDateChanged get _value => super._value as _StartDateChanged;

  @override
  $Res call({
    Object? newStartDate = freezed,
  }) {
    return _then(_StartDateChanged(
      newStartDate == freezed
          ? _value.newStartDate
          : newStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_StartDateChanged implements _StartDateChanged {
  const _$_StartDateChanged(this.newStartDate);

  @override
  final DateTime newStartDate;

  @override
  String toString() {
    return 'TaskFormEvent.startDateChanged(newStartDate: $newStartDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartDateChanged &&
            (identical(other.newStartDate, newStartDate) ||
                const DeepCollectionEquality()
                    .equals(other.newStartDate, newStartDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newStartDate);

  @JsonKey(ignore: true)
  @override
  _$StartDateChangedCopyWith<_StartDateChanged> get copyWith =>
      __$StartDateChangedCopyWithImpl<_StartDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) {
    return startDateChanged(newStartDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (startDateChanged != null) {
      return startDateChanged(newStartDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return startDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (startDateChanged != null) {
      return startDateChanged(this);
    }
    return orElse();
  }
}

abstract class _StartDateChanged implements TaskFormEvent {
  const factory _StartDateChanged(DateTime newStartDate) = _$_StartDateChanged;

  DateTime get newStartDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartDateChangedCopyWith<_StartDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DueDateChangedCopyWith<$Res> {
  factory _$DueDateChangedCopyWith(
          _DueDateChanged value, $Res Function(_DueDateChanged) then) =
      __$DueDateChangedCopyWithImpl<$Res>;
  $Res call({DateTime newDueDate});
}

/// @nodoc
class __$DueDateChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$DueDateChangedCopyWith<$Res> {
  __$DueDateChangedCopyWithImpl(
      _DueDateChanged _value, $Res Function(_DueDateChanged) _then)
      : super(_value, (v) => _then(v as _DueDateChanged));

  @override
  _DueDateChanged get _value => super._value as _DueDateChanged;

  @override
  $Res call({
    Object? newDueDate = freezed,
  }) {
    return _then(_DueDateChanged(
      newDueDate == freezed
          ? _value.newDueDate
          : newDueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DueDateChanged implements _DueDateChanged {
  const _$_DueDateChanged(this.newDueDate);

  @override
  final DateTime newDueDate;

  @override
  String toString() {
    return 'TaskFormEvent.dueDateChanged(newDueDate: $newDueDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DueDateChanged &&
            (identical(other.newDueDate, newDueDate) ||
                const DeepCollectionEquality()
                    .equals(other.newDueDate, newDueDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newDueDate);

  @JsonKey(ignore: true)
  @override
  _$DueDateChangedCopyWith<_DueDateChanged> get copyWith =>
      __$DueDateChangedCopyWithImpl<_DueDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) {
    return dueDateChanged(newDueDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (dueDateChanged != null) {
      return dueDateChanged(newDueDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return dueDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dueDateChanged != null) {
      return dueDateChanged(this);
    }
    return orElse();
  }
}

abstract class _DueDateChanged implements TaskFormEvent {
  const factory _DueDateChanged(DateTime newDueDate) = _$_DueDateChanged;

  DateTime get newDueDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DueDateChangedCopyWith<_DueDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReminderChangedCopyWith<$Res> {
  factory _$ReminderChangedCopyWith(
          _ReminderChanged value, $Res Function(_ReminderChanged) then) =
      __$ReminderChangedCopyWithImpl<$Res>;
  $Res call({DateTime newReminder});
}

/// @nodoc
class __$ReminderChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$ReminderChangedCopyWith<$Res> {
  __$ReminderChangedCopyWithImpl(
      _ReminderChanged _value, $Res Function(_ReminderChanged) _then)
      : super(_value, (v) => _then(v as _ReminderChanged));

  @override
  _ReminderChanged get _value => super._value as _ReminderChanged;

  @override
  $Res call({
    Object? newReminder = freezed,
  }) {
    return _then(_ReminderChanged(
      newReminder == freezed
          ? _value.newReminder
          : newReminder // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ReminderChanged implements _ReminderChanged {
  const _$_ReminderChanged(this.newReminder);

  @override
  final DateTime newReminder;

  @override
  String toString() {
    return 'TaskFormEvent.reminderChanged(newReminder: $newReminder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReminderChanged &&
            (identical(other.newReminder, newReminder) ||
                const DeepCollectionEquality()
                    .equals(other.newReminder, newReminder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newReminder);

  @JsonKey(ignore: true)
  @override
  _$ReminderChangedCopyWith<_ReminderChanged> get copyWith =>
      __$ReminderChangedCopyWithImpl<_ReminderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) {
    return reminderChanged(newReminder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (reminderChanged != null) {
      return reminderChanged(newReminder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return reminderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (reminderChanged != null) {
      return reminderChanged(this);
    }
    return orElse();
  }
}

abstract class _ReminderChanged implements TaskFormEvent {
  const factory _ReminderChanged(DateTime newReminder) = _$_ReminderChanged;

  DateTime get newReminder => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReminderChangedCopyWith<_ReminderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TagsChangedCopyWith<$Res> {
  factory _$TagsChangedCopyWith(
          _TagsChanged value, $Res Function(_TagsChanged) then) =
      __$TagsChangedCopyWithImpl<$Res>;
  $Res call({KtList<TagPrimitive> newTags});
}

/// @nodoc
class __$TagsChangedCopyWithImpl<$Res> extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$TagsChangedCopyWith<$Res> {
  __$TagsChangedCopyWithImpl(
      _TagsChanged _value, $Res Function(_TagsChanged) _then)
      : super(_value, (v) => _then(v as _TagsChanged));

  @override
  _TagsChanged get _value => super._value as _TagsChanged;

  @override
  $Res call({
    Object? newTags = freezed,
  }) {
    return _then(_TagsChanged(
      newTags == freezed
          ? _value.newTags
          : newTags // ignore: cast_nullable_to_non_nullable
              as KtList<TagPrimitive>,
    ));
  }
}

/// @nodoc

class _$_TagsChanged implements _TagsChanged {
  const _$_TagsChanged(this.newTags);

  @override
  final KtList<TagPrimitive> newTags;

  @override
  String toString() {
    return 'TaskFormEvent.tagsChanged(newTags: $newTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagsChanged &&
            (identical(other.newTags, newTags) ||
                const DeepCollectionEquality().equals(other.newTags, newTags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newTags);

  @JsonKey(ignore: true)
  @override
  _$TagsChangedCopyWith<_TagsChanged> get copyWith =>
      __$TagsChangedCopyWithImpl<_TagsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) {
    return tagsChanged(newTags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(newTags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return tagsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(this);
    }
    return orElse();
  }
}

abstract class _TagsChanged implements TaskFormEvent {
  const factory _TagsChanged(KtList<TagPrimitive> newTags) = _$_TagsChanged;

  KtList<TagPrimitive> get newTags => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TagsChangedCopyWith<_TagsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubtasksChangedCopyWith<$Res> {
  factory _$SubtasksChangedCopyWith(
          _SubtasksChanged value, $Res Function(_SubtasksChanged) then) =
      __$SubtasksChangedCopyWithImpl<$Res>;
  $Res call({KtList<SubtaskPrimitive> newSubtasks});
}

/// @nodoc
class __$SubtasksChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$SubtasksChangedCopyWith<$Res> {
  __$SubtasksChangedCopyWithImpl(
      _SubtasksChanged _value, $Res Function(_SubtasksChanged) _then)
      : super(_value, (v) => _then(v as _SubtasksChanged));

  @override
  _SubtasksChanged get _value => super._value as _SubtasksChanged;

  @override
  $Res call({
    Object? newSubtasks = freezed,
  }) {
    return _then(_SubtasksChanged(
      newSubtasks == freezed
          ? _value.newSubtasks
          : newSubtasks // ignore: cast_nullable_to_non_nullable
              as KtList<SubtaskPrimitive>,
    ));
  }
}

/// @nodoc

class _$_SubtasksChanged implements _SubtasksChanged {
  const _$_SubtasksChanged(this.newSubtasks);

  @override
  final KtList<SubtaskPrimitive> newSubtasks;

  @override
  String toString() {
    return 'TaskFormEvent.subtasksChanged(newSubtasks: $newSubtasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubtasksChanged &&
            (identical(other.newSubtasks, newSubtasks) ||
                const DeepCollectionEquality()
                    .equals(other.newSubtasks, newSubtasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newSubtasks);

  @JsonKey(ignore: true)
  @override
  _$SubtasksChangedCopyWith<_SubtasksChanged> get copyWith =>
      __$SubtasksChangedCopyWithImpl<_SubtasksChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) {
    return subtasksChanged(newSubtasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (subtasksChanged != null) {
      return subtasksChanged(newSubtasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return subtasksChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (subtasksChanged != null) {
      return subtasksChanged(this);
    }
    return orElse();
  }
}

abstract class _SubtasksChanged implements TaskFormEvent {
  const factory _SubtasksChanged(KtList<SubtaskPrimitive> newSubtasks) =
      _$_SubtasksChanged;

  KtList<SubtaskPrimitive> get newSubtasks =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SubtasksChangedCopyWith<_SubtasksChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$TaskFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'TaskFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TaskEntity> initialTask) initialized,
    required TResult Function(String newTitle) titleChanged,
    required TResult Function(bool newIsDone) isDoneChanged,
    required TResult Function(int newPriority) priorityChanged,
    required TResult Function(String newDescription) descriptionChanged,
    required TResult Function(DateTime newStartDate) startDateChanged,
    required TResult Function(DateTime newDueDate) dueDateChanged,
    required TResult Function(DateTime newReminder) reminderChanged,
    required TResult Function(KtList<TagPrimitive> newTags) tagsChanged,
    required TResult Function(KtList<SubtaskPrimitive> newSubtasks)
        subtasksChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TaskEntity> initialTask)? initialized,
    TResult Function(String newTitle)? titleChanged,
    TResult Function(bool newIsDone)? isDoneChanged,
    TResult Function(int newPriority)? priorityChanged,
    TResult Function(String newDescription)? descriptionChanged,
    TResult Function(DateTime newStartDate)? startDateChanged,
    TResult Function(DateTime newDueDate)? dueDateChanged,
    TResult Function(DateTime newReminder)? reminderChanged,
    TResult Function(KtList<TagPrimitive> newTags)? tagsChanged,
    TResult Function(KtList<SubtaskPrimitive> newSubtasks)? subtasksChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_IsDoneChanged value) isDoneChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_ReminderChanged value) reminderChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_SubtasksChanged value) subtasksChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_IsDoneChanged value)? isDoneChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_ReminderChanged value)? reminderChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_SubtasksChanged value)? subtasksChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements TaskFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$TaskFormStateTearOff {
  const _$TaskFormStateTearOff();

  _TaskFormState call(
      {TaskEntity? task,
      bool? showErrorMessages,
      bool? isEditing,
      bool? isSaving,
      Option<Either<TaskFailure, Unit>>? saveFailureOrSuccessOption}) {
    return _TaskFormState(
      task: task,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $TaskFormState = _$TaskFormStateTearOff();

/// @nodoc
mixin _$TaskFormState {
  TaskEntity? get task => throw _privateConstructorUsedError;
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  bool? get isEditing => throw _privateConstructorUsedError;
  bool? get isSaving => throw _privateConstructorUsedError;
  Option<Either<TaskFailure, Unit>>? get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskFormStateCopyWith<TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormStateCopyWith<$Res> {
  factory $TaskFormStateCopyWith(
          TaskFormState value, $Res Function(TaskFormState) then) =
      _$TaskFormStateCopyWithImpl<$Res>;
  $Res call(
      {TaskEntity? task,
      bool? showErrorMessages,
      bool? isEditing,
      bool? isSaving,
      Option<Either<TaskFailure, Unit>>? saveFailureOrSuccessOption});

  $TaskEntityCopyWith<$Res>? get task;
}

/// @nodoc
class _$TaskFormStateCopyWithImpl<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  _$TaskFormStateCopyWithImpl(this._value, this._then);

  final TaskFormState _value;
  // ignore: unused_field
  final $Res Function(TaskFormState) _then;

  @override
  $Res call({
    Object? task = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool?,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TaskFailure, Unit>>?,
    ));
  }

  @override
  $TaskEntityCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $TaskEntityCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc
abstract class _$TaskFormStateCopyWith<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  factory _$TaskFormStateCopyWith(
          _TaskFormState value, $Res Function(_TaskFormState) then) =
      __$TaskFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TaskEntity? task,
      bool? showErrorMessages,
      bool? isEditing,
      bool? isSaving,
      Option<Either<TaskFailure, Unit>>? saveFailureOrSuccessOption});

  @override
  $TaskEntityCopyWith<$Res>? get task;
}

/// @nodoc
class __$TaskFormStateCopyWithImpl<$Res>
    extends _$TaskFormStateCopyWithImpl<$Res>
    implements _$TaskFormStateCopyWith<$Res> {
  __$TaskFormStateCopyWithImpl(
      _TaskFormState _value, $Res Function(_TaskFormState) _then)
      : super(_value, (v) => _then(v as _TaskFormState));

  @override
  _TaskFormState get _value => super._value as _TaskFormState;

  @override
  $Res call({
    Object? task = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_TaskFormState(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool?,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TaskFailure, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_TaskFormState implements _TaskFormState {
  const _$_TaskFormState(
      {this.task,
      this.showErrorMessages,
      this.isEditing,
      this.isSaving,
      this.saveFailureOrSuccessOption});

  @override
  final TaskEntity? task;
  @override
  final bool? showErrorMessages;
  @override
  final bool? isEditing;
  @override
  final bool? isSaving;
  @override
  final Option<Either<TaskFailure, Unit>>? saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TaskFormState(task: $task, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskFormState &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$TaskFormStateCopyWith<_TaskFormState> get copyWith =>
      __$TaskFormStateCopyWithImpl<_TaskFormState>(this, _$identity);
}

abstract class _TaskFormState implements TaskFormState {
  const factory _TaskFormState(
          {TaskEntity? task,
          bool? showErrorMessages,
          bool? isEditing,
          bool? isSaving,
          Option<Either<TaskFailure, Unit>>? saveFailureOrSuccessOption}) =
      _$_TaskFormState;

  @override
  TaskEntity? get task => throw _privateConstructorUsedError;
  @override
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool? get isEditing => throw _privateConstructorUsedError;
  @override
  bool? get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<TaskFailure, Unit>>? get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskFormStateCopyWith<_TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
