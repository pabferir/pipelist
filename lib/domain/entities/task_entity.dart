import 'package:equatable/equatable.dart';

class TaskEntity extends Equatable {
  final String id;
  final String title;
  final bool isComplete;
  final String listId;

  TaskEntity({
    required this.id,
    required this.title,
    required this.isComplete,
    required this.listId,
  });

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
      id: id ?? this.id,
      title: title ?? this.title,
      isComplete: isComplete ?? this.isComplete,
      listId: listId ?? this.listId,
    );
  }
}
