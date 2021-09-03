import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class TaskEntity extends Equatable {
  final String id;
  final String title;
  final bool isComplete;
  final String listId;

  TaskEntity({
    String? id,
    required this.title,
    required this.isComplete,
    required this.listId,
  }) : this.id = id ?? Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        title,
        isComplete,
        listId,
      ];

  TaskEntity copyWith({
    String? id,
    String? title,
    bool? isComplete,
    String? listId,
  }) {
    return TaskEntity(
      id: this.id,
      title: title ?? this.title,
      isComplete: isComplete ?? this.isComplete,
      listId: listId ?? this.listId,
    );
  }
}
