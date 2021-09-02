part of 'task_handler_bloc.dart';

abstract class SimpleTaskHandlerState extends Equatable {
  const SimpleTaskHandlerState();

  @override
  List<Object> get props => [];
}

class TasksLoadInProgress extends SimpleTaskHandlerState {}

class TasksLoadSuccess extends SimpleTaskHandlerState {
  final List<TaskEntity> loadedTasks;

  const TasksLoadSuccess([this.loadedTasks = const []]);

  @override
  List<Object> get props => [loadedTasks];

  @override
  String toString() => 'TasksLoadSuccess { loadedTasks: $loadedTasks }';
}

class TasksLoadFailure extends SimpleTaskHandlerState {}
