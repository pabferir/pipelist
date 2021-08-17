import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pipelist/domain/shared/value_objects.dart';
import 'package:pipelist/domain/tasks/subtask.dart';
import 'package:pipelist/domain/tasks/task.dart';
import 'package:pipelist/domain/tasks/value_objects.dart';
import 'package:kt_dart/kt.dart';

part 'task_dtos.freezed.dart';
part 'task_dtos.g.dart';

@freezed
abstract class TaskDto implements _$TaskDto {
  const TaskDto._();

  const factory TaskDto({
    @JsonKey(ignore: true) String? id,
    //@Default("InboxUuid") UniqueId listId,
    @required String? title,
    @required bool? isDone,
    @required int? priority,
    @required String? description,
    @required @DateTimeTimestampConverter() DateTime? startDate,
    @required @DateTimeTimestampConverter() DateTime? dueDate,
    @required @DateTimeTimestampConverter() DateTime? reminder,
    //List<Tag> tags,
    @required List<SubtaskDto>? subtasks,
    @required @ServerTimestampConverter() FieldValue? serverTimestamp,
  }) = _TaskDto;

  factory TaskDto.fromDomain(Task task) {
    return TaskDto(
        id: task.id!.getOrCrash(),
        title: task.title!.getOrCrash(),
        isDone: (task.isDone as ValueObject<bool>).getOrCrash(),
        priority: task.priority.getOrCrash(),
        description: task.description!.getOrCrash(),
        startDate: (task.startDate as ValueObject<DateTime>).getOrCrash(),
        dueDate: (task.dueDate as ValueObject<DateTime>).getOrCrash(),
        reminder: task.reminder!.getOrCrash(),
        subtasks: task.subtasks
            .getOrCrash()
            .map((subtask) => SubtaskDto.fromDomain(subtask))
            .asList(),
        serverTimestamp: FieldValue.serverTimestamp());
  }

  Task toDomain() {
    return Task(
        id: UniqueId.fromUniqueString(id!),
        title: TaskTitle(title!),
        subtasks: SubtaskList(
            subtasks!.map((dto) => dto.toDomain()).toImmutableList()));
  }

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);

  factory TaskDto.fromFirestore(DocumentSnapshot doc) {
    return TaskDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

@freezed
abstract class SubtaskDto implements _$SubtaskDto {
  const SubtaskDto._();

  const factory SubtaskDto({
    @required String? id,
    @required String? title,
    @required bool? isDone,
  }) = _SubtaskDto;

  factory SubtaskDto.fromDomain(Subtask subtask) {
    return SubtaskDto(
      id: subtask.id!.getOrCrash(),
      title: subtask.title!.getOrCrash(),
      isDone: subtask.isDone,
    );
  }

  Subtask toDomain() {
    return Subtask(
        id: UniqueId.fromUniqueString(id!),
        title: TaskTitle(title!),
        isDone: isDone!);
  }

  factory SubtaskDto.fromJson(Map<String, dynamic> json) =>
      _$SubtaskDtoFromJson(json);
}

class ServerTimestampConverter implements JsonConverter<FieldValue?, Object?> {
  const ServerTimestampConverter();

  @override
  FieldValue? fromJson(Object? json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object? toJson(FieldValue? fieldValue) => fieldValue;
}

class DateTimeTimestampConverter implements JsonConverter<DateTime?, Object?> {
  const DateTimeTimestampConverter();

  @override
  DateTime? fromJson(Object? json) {
    if (json is Timestamp) {
      return json.toDate();
    } else {
      return DateTime.fromMillisecondsSinceEpoch(0);
    }
  }

  @override
  Object? toJson(DateTime? date) =>
      date != null ? Timestamp.fromDate(date) : null;
}