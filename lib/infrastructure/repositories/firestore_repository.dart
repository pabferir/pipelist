import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pipelist/domain/entities/task_entity.dart';
import 'package:pipelist/domain/mediators/i_task_mediator.dart';
import 'package:pipelist/infrastructure/dtos/task_dto.dart';

class FirestoreRepository implements ITaskMediator {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<void> createTask(TaskEntity taskEntity) {
    return _firestore
        .collection('tasks')
        .doc(taskEntity.id)
        .set(TaskDto.fromEntity(taskEntity).toDoc());
  }

  @override
  Future<void> deleteTask(TaskEntity taskEntity) {
    return _firestore.collection('tasks').doc(taskEntity.id).delete();
  }

  @override
  Stream<List<TaskEntity>> loadTasks() {
    return _firestore.collection('tasks').snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => TaskDto.fromSnapshot(doc).toEntity())
          .toList();
    });
  }

  @override
  Future<void> updateTask(TaskEntity taskEntity) {
    return _firestore
        .collection('tasks')
        .doc(taskEntity.id)
        .update(TaskDto.fromEntity(taskEntity).toDoc());
  }
}
