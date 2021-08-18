import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:dartz/dartz.dart';
import 'package:pipelist/domain/tasks/i_task_repository.dart';
import 'package:pipelist/domain/tasks/task_failure.dart';
import 'package:pipelist/domain/tasks/task.dart';
import 'package:pipelist/infraestructure/shared/firestore_helpers.dart';
import 'package:pipelist/infraestructure/tasks/task_dtos.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  final FirebaseFirestore _firestore;

  TaskRepository({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Stream<Either<TaskFailure, KtList<TaskEntity>>> watchAll() async* {
    // users/{user ID}/tasks/{task ID}
    // final userDoc = await _firestore.userDocument();
    // yield* userDoc.taskCollection.orderBy('serverTimeStamp', descending: true).snapshots()
    // .map((snapshot) => right(snapshots.documents.map((doc) => TaskDto.fromFirestore(doc).toDomain()
    // .toImmutableList(),),)
    // .onErrorReturnWith((e) {if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
    //  return left(const TaskFailure.insufficientPermission());
    //  } else {
    //    return left(const TaskFailure.unexpected())
    //    }
    //  } );

    // tasks/{task ID}
    // final tasksDoc = await _firestore.doc('z5gnTFulEur3f4BmTZbT');
    final taskCollection = _firestore.taskCollection;
    yield* taskCollection
        .orderBy('serverTimestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<TaskFailure, KtList<TaskEntity>>(
            snapshot.docs
                .map((doc) => TaskDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        );
  }

  @override
  Stream<Either<TaskFailure, KtList<TaskEntity>>> watchUncompleted() {
    // TODO: implement watchUncompleted
    throw UnimplementedError();
  }

  @override
  Future<Either<TaskFailure, Unit>> create(TaskEntity task) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<TaskFailure, Unit>> delete(TaskEntity task) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<TaskFailure, Unit>> update(TaskEntity task) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
