import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:pipelist/domain/tasks/task.dart' as entity;
import 'package:pipelist/domain/tasks/task_failure.dart';

abstract class ITaskRepository {
  Stream<Either<TaskFailure, KtList<entity.Task>>> watchAll();
  Stream<Either<TaskFailure, KtList<entity.Task>>> watchUncompleted();
  Future<Either<TaskFailure, Unit>> create(entity.Task task);
  Future<Either<TaskFailure, Unit>> update(entity.Task task);
  Future<Either<TaskFailure, Unit>> delete(entity.Task task);
}
