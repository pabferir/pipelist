import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pipelist/domain/entities/task_entity.dart';
import 'package:pipelist/domain/mediators/i_task_mediator.dart';

part 'task_loader_event.dart';
part 'task_loader_state.dart';

class TaskLoaderBloc extends Bloc<TaskLoaderEvent, TaskLoaderState> {
  final ITaskMediator _mediator;
  StreamSubscription? _streamSubscription;

  TaskLoaderBloc({required ITaskMediator mediator})
      : this._mediator = mediator,
        super(TaskLoaderInitial());

  @override
  Stream<TaskLoaderState> mapEventToState(TaskLoaderEvent event) async* {
    if (event is ShowAllTasksStarted) yield* _mapShowAllTasksStartedToState();
  }

  // Stream<TaskLoaderState> _mapTasksLoadSuccededToState() async* {
  //   yield TasksLoadInProgress();
  //   try {
  //     this._mediator.loadAllTasks().listen((tasks) => TasksLoadSuccess(tasks));
  //   } catch (_) {
  //     yield TasksLoadFailure();
  //   }
  // }

  Stream<TaskLoaderState> _mapShowAllTasksStartedToState() async* {
    _streamSubscription?.cancel();
    yield TasksLoadInProgress();
    try {
      final taskList = List<TaskEntity>.empty();
      _streamSubscription = _mediator
          .loadAllTasks()
          .listen((tasks) => tasks.map((task) => taskList.add(task)));

      yield TasksLoadSuccess(taskList);
    } catch (_) {
      yield TasksLoadFailure();
    }
  }
}
