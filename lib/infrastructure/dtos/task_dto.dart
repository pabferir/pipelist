import 'package:cloud_firestore/cloud_firestore.dart';
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
      startDate: startDate != '' ? DateTime.parse(startDate) : null,
      dueDate: dueDate != '' ? DateTime.parse(dueDate) : null,
      reminder: reminder != '' ? DateTime.parse(reminder) : null,
      listId: listId,
      tagIds: tagIds != List.empty() ? tagIds : null,
      subtasks: subtasks != List.empty()
          ? subtasks.map((subtaskDto) => subtaskDto.toDomain()).toList()
          : null,
    );
  }

  factory TaskDto.fromJson(Map<String, dynamic> json) {
    return TaskDto(
      id: json['id'] as String,
      title: json['title'] as String,
      isComplete: json['isComplete'] as bool,
      isPriority: json['isPriority'] as bool,
      startDate: json['startDate'] as String,
      dueDate: json['dueDate'] as String,
      reminder: json['reminder'] as String,
      listId: json['listId'] as String,
      tagIds: json['tagIds'].map((tagId) => (tagId).toString()).toList(),
      subtasks: json['subtasks']
          .map((subtask) => SubtaskDto.fromJson(subtask))
          .toList(),
    );
  }

  factory TaskDto.fromSnapshot(DocumentSnapshot snapshot) {
    return TaskDto(
      id: snapshot.id,
      title: snapshot.get('title') as String,
      isComplete: snapshot.get('isComplete') as bool,
      isPriority: snapshot.get('isPriority') as bool,
      startDate: snapshot.get('startDate') as String,
      dueDate: snapshot.get('dueDate') as String,
      reminder: snapshot.get('reminder') as String,
      listId: snapshot.get('listId') as String,
      tagIds:
          snapshot.get('tagIds').map((tagId) => (tagId).toString()).toList(),
      subtasks: snapshot
          .get('subtasks')
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
