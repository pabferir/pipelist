// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskDto _$TaskDtoFromJson(Map<String, dynamic> json) {
  return _TaskDto.fromJson(json);
}

/// @nodoc
class _$TaskDtoTearOff {
  const _$TaskDtoTearOff();

  _TaskDto call(
      {@JsonKey(ignore: true) String? id,
      String? title,
      bool? isDone,
      int? priority,
      String? description,
      @DateTimeTimestampConverter() DateTime? startDate,
      @DateTimeTimestampConverter() DateTime? dueDate,
      @DateTimeTimestampConverter() DateTime? reminder,
      List<SubtaskDto>? subtasks,
      @ServerTimestampConverter() FieldValue? serverTimestamp}) {
    return _TaskDto(
      id: id,
      title: title,
      isDone: isDone,
      priority: priority,
      description: description,
      startDate: startDate,
      dueDate: dueDate,
      reminder: reminder,
      subtasks: subtasks,
      serverTimestamp: serverTimestamp,
    );
  }

  TaskDto fromJson(Map<String, Object> json) {
    return TaskDto.fromJson(json);
  }
}

/// @nodoc
const $TaskDto = _$TaskDtoTearOff();

/// @nodoc
mixin _$TaskDto {
  @JsonKey(ignore: true)
  String? get id =>
      throw _privateConstructorUsedError; //@Default("InboxUuid") UniqueId listId,
  String? get title => throw _privateConstructorUsedError;
  bool? get isDone => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime? get dueDate => throw _privateConstructorUsedError;
  @DateTimeTimestampConverter()
  DateTime? get reminder =>
      throw _privateConstructorUsedError; //List<Tag> tags,
  List<SubtaskDto>? get subtasks => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue? get serverTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDtoCopyWith<TaskDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDtoCopyWith<$Res> {
  factory $TaskDtoCopyWith(TaskDto value, $Res Function(TaskDto) then) =
      _$TaskDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? title,
      bool? isDone,
      int? priority,
      String? description,
      @DateTimeTimestampConverter() DateTime? startDate,
      @DateTimeTimestampConverter() DateTime? dueDate,
      @DateTimeTimestampConverter() DateTime? reminder,
      List<SubtaskDto>? subtasks,
      @ServerTimestampConverter() FieldValue? serverTimestamp});
}

/// @nodoc
class _$TaskDtoCopyWithImpl<$Res> implements $TaskDtoCopyWith<$Res> {
  _$TaskDtoCopyWithImpl(this._value, this._then);

  final TaskDto _value;
  // ignore: unused_field
  final $Res Function(TaskDto) _then;

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
    Object? serverTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as DateTime?,
      subtasks: subtasks == freezed
          ? _value.subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as List<SubtaskDto>?,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
abstract class _$TaskDtoCopyWith<$Res> implements $TaskDtoCopyWith<$Res> {
  factory _$TaskDtoCopyWith(_TaskDto value, $Res Function(_TaskDto) then) =
      __$TaskDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? title,
      bool? isDone,
      int? priority,
      String? description,
      @DateTimeTimestampConverter() DateTime? startDate,
      @DateTimeTimestampConverter() DateTime? dueDate,
      @DateTimeTimestampConverter() DateTime? reminder,
      List<SubtaskDto>? subtasks,
      @ServerTimestampConverter() FieldValue? serverTimestamp});
}

/// @nodoc
class __$TaskDtoCopyWithImpl<$Res> extends _$TaskDtoCopyWithImpl<$Res>
    implements _$TaskDtoCopyWith<$Res> {
  __$TaskDtoCopyWithImpl(_TaskDto _value, $Res Function(_TaskDto) _then)
      : super(_value, (v) => _then(v as _TaskDto));

  @override
  _TaskDto get _value => super._value as _TaskDto;

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
    Object? serverTimestamp = freezed,
  }) {
    return _then(_TaskDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as DateTime?,
      subtasks: subtasks == freezed
          ? _value.subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as List<SubtaskDto>?,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskDto extends _TaskDto {
  const _$_TaskDto(
      {@JsonKey(ignore: true) this.id,
      this.title,
      this.isDone,
      this.priority,
      this.description,
      @DateTimeTimestampConverter() this.startDate,
      @DateTimeTimestampConverter() this.dueDate,
      @DateTimeTimestampConverter() this.reminder,
      this.subtasks,
      @ServerTimestampConverter() this.serverTimestamp})
      : super._();

  factory _$_TaskDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override //@Default("InboxUuid") UniqueId listId,
  final String? title;
  @override
  final bool? isDone;
  @override
  final int? priority;
  @override
  final String? description;
  @override
  @DateTimeTimestampConverter()
  final DateTime? startDate;
  @override
  @DateTimeTimestampConverter()
  final DateTime? dueDate;
  @override
  @DateTimeTimestampConverter()
  final DateTime? reminder;
  @override //List<Tag> tags,
  final List<SubtaskDto>? subtasks;
  @override
  @ServerTimestampConverter()
  final FieldValue? serverTimestamp;

  @override
  String toString() {
    return 'TaskDto(id: $id, title: $title, isDone: $isDone, priority: $priority, description: $description, startDate: $startDate, dueDate: $dueDate, reminder: $reminder, subtasks: $subtasks, serverTimestamp: $serverTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskDto &&
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
                    .equals(other.subtasks, subtasks)) &&
            (identical(other.serverTimestamp, serverTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimestamp, serverTimestamp)));
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
      const DeepCollectionEquality().hash(subtasks) ^
      const DeepCollectionEquality().hash(serverTimestamp);

  @JsonKey(ignore: true)
  @override
  _$TaskDtoCopyWith<_TaskDto> get copyWith =>
      __$TaskDtoCopyWithImpl<_TaskDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskDtoToJson(this);
  }
}

abstract class _TaskDto extends TaskDto {
  const factory _TaskDto(
      {@JsonKey(ignore: true) String? id,
      String? title,
      bool? isDone,
      int? priority,
      String? description,
      @DateTimeTimestampConverter() DateTime? startDate,
      @DateTimeTimestampConverter() DateTime? dueDate,
      @DateTimeTimestampConverter() DateTime? reminder,
      List<SubtaskDto>? subtasks,
      @ServerTimestampConverter() FieldValue? serverTimestamp}) = _$_TaskDto;
  const _TaskDto._() : super._();

  factory _TaskDto.fromJson(Map<String, dynamic> json) = _$_TaskDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override //@Default("InboxUuid") UniqueId listId,
  String? get title => throw _privateConstructorUsedError;
  @override
  bool? get isDone => throw _privateConstructorUsedError;
  @override
  int? get priority => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @DateTimeTimestampConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;
  @override
  @DateTimeTimestampConverter()
  DateTime? get dueDate => throw _privateConstructorUsedError;
  @override
  @DateTimeTimestampConverter()
  DateTime? get reminder => throw _privateConstructorUsedError;
  @override //List<Tag> tags,
  List<SubtaskDto>? get subtasks => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  FieldValue? get serverTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskDtoCopyWith<_TaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SubtaskDto _$SubtaskDtoFromJson(Map<String, dynamic> json) {
  return _SubtaskDto.fromJson(json);
}

/// @nodoc
class _$SubtaskDtoTearOff {
  const _$SubtaskDtoTearOff();

  _SubtaskDto call({String? id, String? title, bool? isDone}) {
    return _SubtaskDto(
      id: id,
      title: title,
      isDone: isDone,
    );
  }

  SubtaskDto fromJson(Map<String, Object> json) {
    return SubtaskDto.fromJson(json);
  }
}

/// @nodoc
const $SubtaskDto = _$SubtaskDtoTearOff();

/// @nodoc
mixin _$SubtaskDto {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get isDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubtaskDtoCopyWith<SubtaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtaskDtoCopyWith<$Res> {
  factory $SubtaskDtoCopyWith(
          SubtaskDto value, $Res Function(SubtaskDto) then) =
      _$SubtaskDtoCopyWithImpl<$Res>;
  $Res call({String? id, String? title, bool? isDone});
}

/// @nodoc
class _$SubtaskDtoCopyWithImpl<$Res> implements $SubtaskDtoCopyWith<$Res> {
  _$SubtaskDtoCopyWithImpl(this._value, this._then);

  final SubtaskDto _value;
  // ignore: unused_field
  final $Res Function(SubtaskDto) _then;

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
              as String?,
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
abstract class _$SubtaskDtoCopyWith<$Res> implements $SubtaskDtoCopyWith<$Res> {
  factory _$SubtaskDtoCopyWith(
          _SubtaskDto value, $Res Function(_SubtaskDto) then) =
      __$SubtaskDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? title, bool? isDone});
}

/// @nodoc
class __$SubtaskDtoCopyWithImpl<$Res> extends _$SubtaskDtoCopyWithImpl<$Res>
    implements _$SubtaskDtoCopyWith<$Res> {
  __$SubtaskDtoCopyWithImpl(
      _SubtaskDto _value, $Res Function(_SubtaskDto) _then)
      : super(_value, (v) => _then(v as _SubtaskDto));

  @override
  _SubtaskDto get _value => super._value as _SubtaskDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_SubtaskDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$_SubtaskDto extends _SubtaskDto {
  const _$_SubtaskDto({this.id, this.title, this.isDone}) : super._();

  factory _$_SubtaskDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SubtaskDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final bool? isDone;

  @override
  String toString() {
    return 'SubtaskDto(id: $id, title: $title, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubtaskDto &&
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
  _$SubtaskDtoCopyWith<_SubtaskDto> get copyWith =>
      __$SubtaskDtoCopyWithImpl<_SubtaskDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubtaskDtoToJson(this);
  }
}

abstract class _SubtaskDto extends SubtaskDto {
  const factory _SubtaskDto({String? id, String? title, bool? isDone}) =
      _$_SubtaskDto;
  const _SubtaskDto._() : super._();

  factory _SubtaskDto.fromJson(Map<String, dynamic> json) =
      _$_SubtaskDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  bool? get isDone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubtaskDtoCopyWith<_SubtaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}
