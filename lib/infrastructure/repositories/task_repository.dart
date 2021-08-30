import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pipelist/domain/entities/task_entity.dart';
import 'package:pipelist/domain/mediators/i_task_mediator.dart';
import 'package:pipelist/infrastructure/dtos/task_dto.dart';

class TaskRepository implements ITaskMediator {
  final FirebaseFirestore _firestore;

  const TaskRepository(this._firestore);

  @override
  Future<void> createTask(TaskEntity taskEntity) {
    return _firestore
        .collection('tasks')
        .doc(taskEntity.id)
        .set(TaskDto.fromDomain(taskEntity).toJson());
  }

  @override
  Stream<List<TaskEntity>> readAllTasks() async* {
    _firestore.collection('tasks').snapshots().map((snapshot) => {
          snapshot.docs
              .map((doc) => (TaskDto.fromSnapshot(doc)).toDomain())
              .toList(),
        });
  }

  @override
  Stream<List<TaskEntity>> readUncompletedTasks() async* {
    _firestore
        .collection('tasks')
        .snapshots()
        .map((snapshot) => {
              snapshot.docs
                  .map((doc) => (TaskDto.fromSnapshot(doc)).toDomain()),
            })
        .map(
          (set) => set
              .where(
                (tasks) => tasks.any((task) => !task.isComplete),
              )
              .toList(),
        );
  }

  @override
  Future<void> updateTask(TaskEntity taskEntity) {
    return _firestore
        .collection('tasks')
        .doc(taskEntity.id)
        .update(TaskDto.fromDomain(taskEntity).toJson());
  }

  @override
  Future<void> deleteTask(TaskEntity taskEntity) {
    return _firestore.collection('tasks').doc(taskEntity.id).delete();
  }
}
