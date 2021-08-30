import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pipelist/domain/entities/task_entity.dart';
import 'package:pipelist/domain/mediators/i_task_mediator.dart';
import 'package:pipelist/infrastructure/dtos/task_dto.dart';

class TaskFirebaseRepository implements ITaskMediator {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  TaskFirebaseRepository();

  @override
  Future<void> createTask(TaskEntity taskEntity) async {
    await _firestore
        .collection('tasks')
        .doc(taskEntity.id)
        .set(TaskDto.fromDomain(taskEntity).toJson());
  }

  @override
  Stream<List<TaskEntity>> loadAllTasks() async* {
    final List<TaskEntity> taskList = List<TaskEntity>.empty();
    await _firestore.collection('tasks').snapshots().map(
          (snapshot) => snapshot.docs.map(
            (doc) => taskList.add(
              (TaskDto.fromSnapshot(doc)).toDomain(),
            ),
          ),
        );
    yield taskList;
  }

  @override
  Stream<List<TaskEntity>> loadUncompletedTasks() async* {
    final List<TaskEntity> uncompletedTaskList = List<TaskEntity>.empty();
    await _firestore.collection('tasks').snapshots().map(
          (snapshot) => snapshot.docs.map(
            (doc) => uncompletedTaskList.add(
              (TaskDto.fromSnapshot(doc)).toDomain(),
            ),
          ),
        );
    // .map(
    //   (tasks) => tasks.where(
    //     (task) => !task.isComplete,
    //   ),
    // );
    yield uncompletedTaskList.where((task) => !task.isComplete).toList();
  }

  @override
  Future<void> updateTask(TaskEntity taskEntity) async {
    await _firestore
        .collection('tasks')
        .doc(taskEntity.id)
        .update(TaskDto.fromDomain(taskEntity).toJson());
  }

  @override
  Future<void> deleteTask(TaskEntity taskEntity) async {
    await _firestore.collection('tasks').doc(taskEntity.id).delete();
  }
}
