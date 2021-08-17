import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:pipelist/domain/tasks/i_task_repository.dart';
import 'package:pipelist/domain/tasks/task.dart';
import 'package:pipelist/domain/tasks/task_failure.dart';

part 'task_watcher_event.dart';
part 'task_watcher_state.dart';
part 'task_watcher_bloc.freezed.dart';

@injectable
class TaskWatcherBloc extends Bloc<TaskWatcherEvent, TaskWatcherState> {
  final ITaskRepository _taskRepository;
  StreamSubscription<dartz.Either<TaskFailure, KtList<Task>>>
      _taskStreamSubscription;

  TaskWatcherBloc(
    this._taskRepository,
    this._taskStreamSubscription,
  ) : super(_Initial());

  TaskWatcherState get initialState => const TaskWatcherState.initial();

  @override
  Stream<TaskWatcherState> mapEventToState(
    TaskWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const TaskWatcherState.loadInProgress();
        await _taskStreamSubscription.cancel();
        _taskStreamSubscription = _taskRepository.watchAll().listen(
              (failureOrTasks) =>
                  add(TaskWatcherEvent.tasksReceived(failureOrTasks)),
            );
      },
      watchUncompletedStarted: (e) async* {
        yield const TaskWatcherState.loadInProgress();
        await _taskStreamSubscription.cancel();
        _taskStreamSubscription = _taskRepository.watchUncompleted().listen(
              (failureOrTasks) =>
                  add(TaskWatcherEvent.tasksReceived(failureOrTasks)),
            );
      },
      tasksReceived: (e) async* {
        yield e.failureOrTasks.fold(
          (f) => TaskWatcherState.loadFailure(f),
          (tasks) => TaskWatcherState.loadSuccess(tasks),
        ) as TaskWatcherState;
      },
    );
  }

  @override
  Future<void> close() async {
    await _taskStreamSubscription.cancel();
    return super.close();
  }
}
