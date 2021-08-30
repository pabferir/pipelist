import 'package:pipelist/domain/entities/task_entity.dart';
import 'package:pipelist/infrastructure/dtos/subtask_dto.dart';

class TaskDto {
  final String id;
  final String title;
  final bool isComplete;
  final bool isPriority;
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
    required this.isPriority,
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
      isPriority: task.isPriority,
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
        isPriority: isPriority,
        startDate: DateTime.parse(startDate),
        dueDate: DateTime.parse(dueDate),
        reminder: DateTime.parse(reminder),
        listId: listId,
        tagIds: tagIds,
        subtasks: subtasks.map((subtaskDto) => subtaskDto.toDomain()).toList());
  }

  factory TaskDto.fromJson(Map<String, dynamic> json) {
    return TaskDto(
      id: json['id'],
      title: json['title'],
      isComplete: json['isComplete'],
      isPriority: json['isPriority'],
      startDate: json['startDate'],
      dueDate: json['dueDate'],
      reminder: json['reminder'],
      listId: json['listId'],
      tagIds: json['tagIds'].map((tagId) => (tagId).toString()).toList(),
      subtasks: json['subtasks']
          .map((subtask) => SubtaskDto.fromJson(subtask))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'isComplete': isComplete,
        'isPriority': isPriority,
        'startDate': startDate,
        'dueDate': dueDate,
        'reminder': reminder,
        'listId': listId,
        'tagIds': tagIds,
        'subtasks': subtasks,
      };
}
