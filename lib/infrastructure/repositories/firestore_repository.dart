import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pipelist/constants.dart';
import 'package:pipelist/domain/entities/list_entity.dart';
import 'package:pipelist/domain/entities/task_entity.dart';
import 'package:pipelist/domain/mediators/i_list_mediator.dart';
import 'package:pipelist/domain/mediators/i_task_mediator.dart';
import 'package:pipelist/infrastructure/dtos/list_dto.dart';
import 'package:pipelist/infrastructure/dtos/task_dto.dart';

class FirestoreRepository implements ITaskMediator, IListMediator {
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
  Stream<List<TaskEntity>> loadTasksInInbox() {
    return _firestore.collection('tasks').snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => TaskDto.fromSnapshot(doc).toEntity())
          .where((task) => task.listId == inboxEntity.id)
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

  @override
  Future<void> createList(ListEntity listEntity) {
    return _firestore
        .collection('lists')
        .doc(listEntity.id)
        .set(ListDto.fromEntity(listEntity).toDoc());
  }

  @override
  Future<void> deleteList(ListEntity listEntity) {
    return _firestore.collection('lists').doc(listEntity.id).delete();
  }

  @override
  Stream<List<ListEntity>> loadLists() {
    return _firestore.collection('lists').snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => ListDto.fromSnapshot(doc).toEntity())
          .toList();
    });
  }

  @override
  Stream<List<ListEntity>> loadUserLists() {
    return _firestore.collection('lists').snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => ListDto.fromSnapshot(doc).toEntity())
          .where((list) => list.id != inboxEntity.id)
          .toList();
    });
  }

  @override
  Future<void> updateList(ListEntity listEntity) {
    return _firestore
        .collection('lists')
        .doc(listEntity.id)
        .update(ListDto.fromEntity(listEntity).toDoc());
  }

  @override
  Stream<List<TaskEntity>> loadTasksByList(ListEntity listEntity) {
    return _firestore.collection('tasks').snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => TaskDto.fromSnapshot(doc).toEntity())
          .where((task) => task.listId == listEntity.id)
          .toList();
    });
  }
}
