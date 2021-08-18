import 'package:equatable/equatable.dart';
import 'package:pipelist/domain/entities/subtask_entity.dart';
import 'package:uuid/uuid.dart';

class TaskEntity extends Equatable {
  final Uuid id;
  final String title;
  final bool isComplete;
  final int priority;
  final String? description;
  final DateTime? startDate;
  final DateTime? dueDate;
  final DateTime? reminder;
  final Uuid listId;
  final List<Uuid>? tagIds;
  final List<SubtaskEntity>? subtasks;

  TaskEntity({
    required this.id,
    required this.title,
    required this.isDone,
    required this.priority,
    this.description,
    this.startDate,
    this.dueDate,
    this.reminder,
    required this.listId,
    this.tagIds,
    this.subtasks,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        isDone,
        priority,
        description,
        startDate,
        dueDate,
        reminder,
        listId,
        tagIds,
        subtasks,
      ];
}
