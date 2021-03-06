part of 'task_handler_bloc.dart';

abstract class TaskHandlerState extends Equatable {
  const TaskHandlerState();

  @override
  List<Object> get props => [];
}

class TasksLoadInProgress extends TaskHandlerState {}

class TasksLoadSuccess extends TaskHandlerState {
  final List<TaskEntity> loadedTasks;

  const TasksLoadSuccess([this.loadedTasks = const []]);

  @override
  List<Object> get props => [loadedTasks];

  @override
  String toString() => 'TasksLoadSuccess { loadedTasks: $loadedTasks }';
}

class TasksLoadFailure extends TaskHandlerState {}

class TasksByListLoadInProgress extends TaskHandlerState {}

class TasksByListLoadSuccess extends TaskHandlerState {
  final List<TaskEntity> loadedTasks;

  const TasksByListLoadSuccess([this.loadedTasks = const []]);

  @override
  List<Object> get props => [loadedTasks];

  @override
  String toString() => 'TasksByListLoadSuccess { loadedTasks: $loadedTasks }';
}

class TasksByListLoadFailure extends TaskHandlerState {}

class TasksInInboxLoadInProgress extends TaskHandlerState {}

class TasksInInboxLoadSuccess extends TaskHandlerState {
  final List<TaskEntity> loadedTasks;

  const TasksInInboxLoadSuccess([this.loadedTasks = const []]);

  @override
  List<Object> get props => [loadedTasks];

  @override
  String toString() => 'TasksInInboxLoadSuccess { loadedTasks: $loadedTasks }';
}

class TasksInInboxLoadFailure extends TaskHandlerState {}
