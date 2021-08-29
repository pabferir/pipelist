import 'package:pipelist/domain/entities/task_entity.dart';

abstract class ITaskMediator {
  Future<void> createTask(TaskEntity taskEntity);
  Stream<List<TaskEntity>> readAllTasks();
  Stream<List<TaskEntity>> readUncompletedTasks();
  Future<void> updateTask(TaskEntity taskEntity);
  Future<void> deleteTask(TaskEntity taskEntity);
}
