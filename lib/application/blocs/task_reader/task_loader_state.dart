part of 'task_loader_bloc.dart';

abstract class TaskLoaderState extends Equatable {
  const TaskLoaderState();

  @override
  List<Object> get props => [];
}

class TaskLoaderInitial extends TaskLoaderState {}

class TasksLoadInProgress extends TaskLoaderState {}

class TasksLoadSuccess extends TaskLoaderState {
  final List<TaskEntity> tasks;

  const TasksLoadSuccess([this.tasks = const []]);

  @override
  List<Object> get props => [tasks];

  @override
  String toString() => 'TasksLoadSuccess { tasks: $tasks }';
}

class TasksLoadFailure extends TaskLoaderState {}
