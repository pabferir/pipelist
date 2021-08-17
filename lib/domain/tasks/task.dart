import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:pipelist/domain/shared/failures.dart';
import 'package:pipelist/domain/shared/value_objects.dart';
import 'package:pipelist/domain/tasks/subtask.dart';
import 'package:pipelist/domain/tasks/value_objects.dart';

part 'task.freezed.dart';

@freezed
abstract class Task implements _$Task {
  const Task._();

  const factory Task({
    @required UniqueId? id,
    //@Default("InboxUuid") UniqueId listId,
    @required TaskTitle? title,
    @Default(false) bool isDone,
    @Default(0) Priority priority,
    Description? description,
    DateTime? startDate,
    DateTime? dueDate,
    Reminder? reminder,
    //List<Tag> tags,
    required SubtaskList<Subtask> subtasks,
  }) = _Task;

  factory Task.empty() => Task(
      id: UniqueId(), title: TaskTitle(''), subtasks: SubtaskList(emptyList()));

  Option<ValueFailure<dynamic>> get failureOption {
    return title!.failureOrUnit
        .andThen(priority.failureOrUnit)
        .andThen(description!.failureOrUnit)
        .andThen(subtasks.failureOrUnit)
        .andThen(reminder!.failureOrUnit)
        .andThen(
          subtasks
              .getOrCrash()
              .map((subtask) => subtask.failureOption)
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (_) => none());
  }

  get serverTimestamp => null;
}
