import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pipelist/domain/shared/failures.dart';
import 'package:pipelist/domain/shared/value_objects.dart';
import 'package:pipelist/domain/tasks/value_objects.dart';

part 'subtask.freezed.dart';

@freezed
abstract class Subtask implements _$Subtask {
  const Subtask._();

  const factory Subtask({
    required UniqueId? id,
    required TaskTitle? title,
    @Default(false) bool isDone,
  }) = _Subtask;

  factory Subtask.empty() => Subtask(id: UniqueId(), title: TaskTitle(''));

  Option<ValueFailure<dynamic>> get failureOption {
    return title!.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
