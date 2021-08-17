import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:pipelist/domain/tasks/task.dart';
import 'package:pipelist/domain/tasks/task_failure.dart';

abstract class ITaskRepository {
  Stream<Either<TaskFailure, KtList<TaskEntity>>> watchAll();
  Stream<Either<TaskFailure, KtList<TaskEntity>>> watchUncompleted();
  Future<Either<TaskFailure, Unit>> create(TaskEntity task);
  Future<Either<TaskFailure, Unit>> update(TaskEntity task);
  Future<Either<TaskFailure, Unit>> delete(TaskEntity task);
}
