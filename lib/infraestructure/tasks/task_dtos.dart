import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pipelist/domain/shared/value_objects.dart';
import 'package:pipelist/domain/tasks/subtask.dart';
import 'package:pipelist/domain/tasks/tag.dart';
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
    @required List<TagDto>? tags,
    @required List<SubtaskDto>? subtasks,
    @required @ServerTimestampConverter() FieldValue? serverTimestamp,
  }) = _TaskDto;

  factory TaskDto.fromDomain(TaskEntity task) {
    return TaskDto(
        id: task.id!.getOrCrash(),
        title: task.title!.getOrCrash(),
        isDone: (task.isDone as ValueObject<bool>).getOrCrash(),
        priority: task.priority!.getOrCrash(),
        description: task.description!.getOrCrash(),
        startDate: (task.startDate as ValueObject<DateTime>).getOrCrash(),
        dueDate: (task.dueDate as ValueObject<DateTime>).getOrCrash(),
        reminder: task.reminder!.getOrCrash(),
        tags: task.tags
            .getOrCrash()
            .map((tag) => TagDto.fromDomain(tag))
            .asList(),
        subtasks: task.subtasks
            .getOrCrash()
            .map((subtask) => SubtaskDto.fromDomain(subtask))
            .asList(),
        serverTimestamp: FieldValue.serverTimestamp());
  }

  TaskEntity toDomain() {
    return TaskEntity(
      id: UniqueId.fromUniqueString(id!),
      title: TaskTitle(title!),
      priority: Priority(priority!),
      description: Description(description!),
      startDate: DateTimeTimestampConverter().fromJson(startDate),
      dueDate: DateTimeTimestampConverter().fromJson(dueDate),
      reminder: Reminder(DateTimeTimestampConverter().fromJson(reminder)!),
      tags: TagList(tags!.map((dto) => dto.toDomain()).toImmutableList()),
      subtasks:
          SubtaskList(subtasks!.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);

  factory TaskDto.fromFirestore(DocumentSnapshot doc) {
    return TaskDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

@freezed
abstract class TagDto implements _$TagDto {
  const TagDto._();

  const factory TagDto({
    @required String? id,
    @required String? title,
  }) = _TagDto;

  factory TagDto.fromDomain(Tag tag) {
    return TagDto(
      id: tag.id!.getOrCrash(),
      title: tag.title!.getOrCrash(),
    );
  }

  Tag toDomain() {
    return Tag(id: UniqueId.fromUniqueString(id!), title: TagTitle(title!));
  }

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);
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
