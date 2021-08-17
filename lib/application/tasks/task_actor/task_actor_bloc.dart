import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pipelist/domain/tasks/i_task_repository.dart';
import 'package:pipelist/domain/tasks/task.dart';
import 'package:pipelist/domain/tasks/task_failure.dart';

part 'task_actor_event.dart';
part 'task_actor_state.dart';
part 'task_actor_bloc.freezed.dart';

class TaskActorBloc extends Bloc<TaskActorEvent, TaskActorState> {
  final ITaskRepository _taskRepository;

  TaskActorBloc(this._taskRepository) : super(_Initial());

  @override
  TaskActorState get initialState => const TaskActorState.initial();

  @override
  Stream<TaskActorState> mapEventToState(
    TaskActorEvent event,
  ) async* {
    yield const TaskActorState.actionInProgress();
    final possibleFailure = await _taskRepository.delete(event.task);
    yield possibleFailure.fold(
      (f) => TaskActorState.deleteFailure(f),
      (_) => TaskActorState.deleteSuccess(),
    );
  }
}
