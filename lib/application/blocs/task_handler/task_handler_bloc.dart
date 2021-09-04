import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pipelist/domain/entities/list_entity.dart';
import 'package:pipelist/domain/entities/task_entity.dart';
import 'package:pipelist/domain/mediators/i_task_mediator.dart';

part 'task_handler_event.dart';
part 'task_handler_state.dart';

class TaskHandlerBloc extends Bloc<TaskHandlerEvent, TaskHandlerState> {
  final ITaskMediator _mediator;
  StreamSubscription? _streamSubscription;

  TaskHandlerBloc({required ITaskMediator mediator})
      : _mediator = mediator,
        super(TasksLoadInProgress());

  TaskHandlerState get initialState => TasksLoadInProgress();

  @override
  Stream<TaskHandlerState> mapEventToState(
    TaskHandlerEvent event,
  ) async* {
    if (event is TasksLoaded) {
      yield* _mapTasksLoadedToState();
    } else if (event is TaskAdded) {
      yield* _mapTaskAddedToState(event);
    } else if (event is TaskUpdated) {
      yield* _mapTaskUpdatedToState(event);
    } else if (event is TaskDeleted) {
      yield* _mapTaskDeletedToState(event);
    } else if (event is ClearTasksCompleted) {
      yield* _mapClearCompletedToState();
    } else if (event is ToggleAllTasks) {
      yield* _mapToggleAllTasksToState();
    } else if (event is TasksChanged) {
      yield* _mapTasksChangedToState(event);
    } else if (event is TasksByListLoaded) {
      yield* _mapTasksByListLoadedToState(event);
    }
  }

  Stream<TaskHandlerState> _mapTasksLoadedToState() async* {
    _streamSubscription?.cancel();
    _streamSubscription = _mediator.loadTasks().listen(
      (tasks) {
        add(
          TasksChanged(tasks),
        );
      },
    );
  }

  Stream<TaskHandlerState> _mapTaskAddedToState(TaskAdded event) async* {
    _mediator.createTask(event.taskEntity);
  }

  Stream<TaskHandlerState> _mapTaskUpdatedToState(TaskUpdated event) async* {
    _mediator.updateTask(event.taskEntity);
  }

  Stream<TaskHandlerState> _mapTaskDeletedToState(TaskDeleted event) async* {
    _mediator.deleteTask(event.taskEntity);
  }

  Stream<TaskHandlerState> _mapClearCompletedToState() async* {}

  Stream<TaskHandlerState> _mapToggleAllTasksToState() async* {}

  Stream<TaskHandlerState> _mapTasksChangedToState(TasksChanged event) async* {
    yield TasksLoadSuccess(event.tasksEntities);
  }

  Stream<TaskHandlerState> _mapTasksByListLoadedToState(
      TasksByListLoaded event) async* {
    _streamSubscription?.cancel();
    _streamSubscription = _mediator.loadTasksByList(event.listEntity).listen(
      (tasks) {
        add(
          TasksChanged(tasks),
        );
      },
    );
  }
}
