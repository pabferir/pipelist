part of 'task_loader_bloc.dart';

abstract class TaskLoaderEvent extends Equatable {
  const TaskLoaderEvent();

  @override
  List<Object> get props => [];
}

class TasksLoadSucceded extends TaskLoaderEvent {}

class ShowUncompletedTasksStarted extends TaskLoaderEvent {}

class ShowAllTasksStarted extends TaskLoaderEvent {}
