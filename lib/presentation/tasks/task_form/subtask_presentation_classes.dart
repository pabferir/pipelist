import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pipelist/domain/shared/value_objects.dart';
import 'package:pipelist/domain/tasks/subtask.dart';
import 'package:pipelist/domain/tasks/value_objects.dart';

part 'subtask_presentation_classes.freezed.dart';

@freezed
abstract class SubtaskPrimitive implements _$SubtaskPrimitive {
  const SubtaskPrimitive._();

  const factory SubtaskPrimitive({
    @required UniqueId? id,
    @required String? title,
    @required bool? isDone,
  }) = _SubtaskPrimitive;

  factory SubtaskPrimitive.empty() =>
      SubtaskPrimitive(id: UniqueId(), title: '', isDone: false);

  factory SubtaskPrimitive.fromDomain(Subtask subtask) {
    return SubtaskPrimitive(
      id: subtask.id!,
      title: subtask.title!.getOrCrash(),
      isDone: subtask.isDone,
    );
  }

  Subtask toDomain() {
    return Subtask(id: id, title: TaskTitle(title!), isDone: isDone!);
  }
}
