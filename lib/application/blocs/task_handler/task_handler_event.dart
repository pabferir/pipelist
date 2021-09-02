part of 'task_handler_bloc.dart';

abstract class SimpleTaskHandlerEvent extends Equatable {
  const SimpleTaskHandlerEvent();

  @override
  List<Object> get props => [];
}

class TasksLoaded extends SimpleTaskHandlerEvent {}

class TaskAdded extends SimpleTaskHandlerEvent {
  final TaskEntity taskEntity;

  const TaskAdded(this.taskEntity);

  @override
  List<Object> get props => [taskEntity];

  @override
  String toString() => 'TaskAdded { taskEntity: $taskEntity }';
}

class TaskUpdated extends SimpleTaskHandlerEvent {
  final TaskEntity taskEntity;

  const TaskUpdated(this.taskEntity);

  @override
  List<Object> get props => [taskEntity];

  @override
  String toString() => 'TaskUpdated { taskEntity: $taskEntity }';
}

class TaskDeleted extends SimpleTaskHandlerEvent {
  final TaskEntity taskEntity;

  const TaskDeleted(this.taskEntity);

  @override
  List<Object> get props => [taskEntity];

  @override
  String toString() => 'TaskDeleted { taskEntity: $taskEntity }';
}

class ClearTasksCompleted extends SimpleTaskHandlerEvent {}

class ToggleAllTasks extends SimpleTaskHandlerEvent {}

class TasksChanged extends SimpleTaskHandlerEvent {
  final List<TaskEntity> tasksEntities;

  const TasksChanged(this.tasksEntities);

  @override
  List<Object> get props => [tasksEntities];

  @override
  String toString() => 'TasksChanged { tasksEntities: $tasksEntities }';
}
