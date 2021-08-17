import 'package:dartz/dartz.dart' as dartz;
import 'package:kt_dart/collection.dart';
import 'package:pipelist/domain/tasks/task.dart';
import 'package:pipelist/domain/tasks/task_failure.dart';

abstract class ITaskRepository {
  Stream<dartz.Either<TaskFailure, KtList<Task>>> watchAll();
  Stream<dartz.Either<TaskFailure, KtList<Task>>> watchUncompleted();
  Future<dartz.Either<TaskFailure, dartz.Unit>> create(Task task);
  Future<dartz.Either<TaskFailure, dartz.Unit>> update(Task task);
  Future<dartz.Either<TaskFailure, dartz.Unit>> delete(Task task);
}
