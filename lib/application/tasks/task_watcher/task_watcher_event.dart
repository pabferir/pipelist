part of 'task_watcher_bloc.dart';

@freezed
abstract class TaskWatcherEvent with _$TaskWatcherEvent {
  const factory TaskWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory TaskWatcherEvent.watchUncompletedStarted() =
      _WatchUncompletedStarted;
  const factory TaskWatcherEvent.tasksReceived(
      dartz.Either<TaskFailure, KtList<Task>> failureOrTasks) = _TasksReceived;
}
