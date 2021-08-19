import 'package:pipelist/domain/entities/task_entity.dart';
import 'package:pipelist/infrastructure/dtos/subtask_dto.dart';
import 'package:uuid/uuid.dart';

class TaskDto {
  final String id;
  final String title;
  final bool isComplete;
  final int priority;
  final String description;
  final String startDate;
  final String dueDate;
  final String reminder;
  final String listId;
  final List<String> tagIds;
  final List<SubtaskDto> subtasks;

  TaskDto({
    required this.id,
    required this.title,
    required this.isComplete,
    required this.priority,
    required this.description,
    required this.startDate,
    required this.dueDate,
    required this.reminder,
    required this.listId,
    required this.tagIds,
    required this.subtasks,
  });

  factory TaskDto.fromDomain(TaskEntity task) {
    return TaskDto(
      id: task.id.toString(),
      title: task.title,
      isComplete: task.isComplete,
      priority: task.priority,
      description: task.description ?? '',
      startDate:
          task.startDate != null ? task.startDate!.toIso8601String() : '',
      dueDate: task.dueDate != null ? task.dueDate!.toIso8601String() : '',
      reminder: task.reminder != null ? task.reminder!.toIso8601String() : '',
      listId: task.listId.toString(),
      tagIds: task.tagIds != null
          ? task.tagIds!.map((tagId) => tagId.toString()).toList()
          : List.empty(),
      subtasks: task.subtasks != null
          ? task.subtasks!
              .map((subtask) => SubtaskDto.fromDomain(subtask))
              .toList()
          : List.empty(),
    );
  }

  TaskEntity toDomain() {
    return TaskEntity(
        id: id,
        title: title,
        isComplete: isComplete,
        priority: priority,
        description: description,
        startDate: DateTime.parse(startDate),
        dueDate: DateTime.parse(dueDate),
        reminder: DateTime.parse(reminder),
        listId: listId,
        tagIds: tagIds,
        subtasks: subtasks.map((subtaskDto) => subtaskDto.toDomain()).toList());
  }
}