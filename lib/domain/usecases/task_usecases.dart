import 'package:pipelist/domain/entities/task_entity.dart';

abstract class TaskUseCases {
  Future<void> createTask();
  Stream<List<TaskEntity>> readAllTasks();
  Stream<List<TaskEntity>> readUncompletedTasks();
  Future<void> updateTask();
  Future<void> deleteTask();
}
