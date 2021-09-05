part of 'task_handler_bloc.dart';

abstract class TaskHandlerEvent extends Equatable {
  const TaskHandlerEvent();

  @override
  List<Object> get props => [];
}

class TasksLoaded extends TaskHandlerEvent {}

class TaskAdded extends TaskHandlerEvent {
  final TaskEntity taskEntity;

  const TaskAdded(this.taskEntity);

  @override
  List<Object> get props => [taskEntity];

  @override
  String toString() => 'TaskAdded { taskEntity: $taskEntity }';
}

class TaskUpdated extends TaskHandlerEvent {
  final TaskEntity taskEntity;

  const TaskUpdated(this.taskEntity);

  @override
  List<Object> get props => [taskEntity];

  @override
  String toString() => 'TaskUpdated { taskEntity: $taskEntity }';
}

class TaskDeleted extends TaskHandlerEvent {
  final TaskEntity taskEntity;

  const TaskDeleted(this.taskEntity);

  @override
  List<Object> get props => [taskEntity];

  @override
  String toString() => 'TaskDeleted { taskEntity: $taskEntity }';
}

class ClearTasksCompleted extends TaskHandlerEvent {}

class ToggleAllTasks extends TaskHandlerEvent {}

class TasksChanged extends TaskHandlerEvent {
  final List<TaskEntity> tasksEntities;

  const TasksChanged(this.tasksEntities);

  @override
  List<Object> get props => [tasksEntities];

  @override
  String toString() => 'TasksChanged { tasksEntities: $tasksEntities }';
}

class TasksByListLoaded extends TaskHandlerEvent {
  final ListEntity listEntity;

  const TasksByListLoaded(this.listEntity);
  @override
  List<Object> get props => [listEntity];

  @override
  String toString() => 'TasksByListLoaded { listEntity: $listEntity }';
}

class TasksInInboxLoaded extends TaskHandlerEvent {}

class TasksInInboxChanged extends TaskHandlerEvent {
  final List<TaskEntity> tasksEntities;

  const TasksInInboxChanged(this.tasksEntities);

  @override
  List<Object> get props => [tasksEntities];

  @override
  String toString() => 'TasksInInboxChanged { tasksEntities: $tasksEntities }';
}
