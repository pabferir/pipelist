import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:dartz/dartz.dart';
import 'package:pipelist/domain/tasks/i_task_repository.dart';
import 'package:pipelist/domain/tasks/task_failure.dart';
import 'package:pipelist/domain/tasks/task.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  final FirebaseFirestore _firestore;

  TaskRepository(this._firestore);

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

    // final taskDoc = await _firestore.taskDocument();
    // yield* taskDoc.snapshots().map((snapshot) => right<TaskFailure, KtList<entity.Task>>(
    //     (snapshot.data()!)
    //         .map((doc) => TaskDto.fromFirestore(doc).toDomain()).toImmutableList()));
    throw UnimplementedError();
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
