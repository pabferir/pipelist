part of 'task_watcher_bloc.dart';

@freezed
abstract class TaskWatcherState with _$TaskWatcherState {
  const factory TaskWatcherState.initial() = _Initial;
  const factory TaskWatcherState.loadInProgress() = _LoadInProgress;
  const factory TaskWatcherState.loadSuccess(KtList<Task> tasks) = _LoadSuccess;
  const factory TaskWatcherState.loadFailure(TaskFailure taskFailure) =
      _LoadFailure;
}
