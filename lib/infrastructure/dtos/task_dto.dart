import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pipelist/domain/entities/task_entity.dart';

class TaskDto {
  final String id;
  final String title;
  final bool isComplete;
  final String listId;

  TaskDto({
    required this.id,
    required this.title,
    required this.isComplete,
    required this.listId,
  });

  static TaskDto fromEntity(TaskEntity entity) {
    return TaskDto(
      id: entity.id,
      title: entity.title,
      isComplete: entity.isComplete,
      listId: entity.listId,
    );
  }

  TaskEntity toEntity() {
    return TaskEntity(
      id: this.id,
      title: this.title,
      isComplete: this.isComplete,
      listId: this.listId,
    );
  }

  static TaskDto fromJson(Map<String, Object> json) {
    return TaskDto(
      id: json['id'] as String,
      title: json['title'] as String,
      isComplete: json[' isComplete'] as bool,
      listId: json['listId'] as String,
    );
  }

  Map<String, Object> toJson() {
    return {
      'id': this.id,
      'title': this.title,
      'isComplete': this.isComplete,
      'listId': this.listId,
    };
  }

  static TaskDto fromSnapshot(DocumentSnapshot snapshot) {
    return TaskDto(
      id: snapshot.id,
      title: snapshot.get('title') as String,
      isComplete: snapshot.get('isComplete') as bool,
      listId: snapshot.get('listId') as String,
    );
  }

  Map<String, Object> toDoc() {
    return {
      'title': this.title,
      'isComplete': this.isComplete,
      'listId': this.listId,
    };
  }
}
