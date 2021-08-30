import 'package:equatable/equatable.dart';
import 'package:pipelist/domain/entities/subtask_entity.dart';

class TaskEntity extends Equatable {
  final String id;
  final String title;
  final bool isComplete;
  final bool isPriority;
  final DateTime? startDate;
  final DateTime? dueDate;
  final DateTime? reminder;
  final String listId;
  final List<String>? tagIds;
  final List<SubtaskEntity>? subtasks;

  TaskEntity({
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

  @override
  List<Object?> get props => [
        id,
        title,
        isComplete,
        isPriority,
        startDate,
        dueDate,
        reminder,
        listId,
        tagIds,
        subtasks,
      ];
}
