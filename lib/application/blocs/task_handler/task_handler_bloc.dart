import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pipelist/domain/entities/task_entity.dart';
import 'package:pipelist/domain/mediators/i_task_mediator.dart';

part 'task_handler_event.dart';
part 'task_handler_state.dart';

class SimpleTaskHandlerBloc
    extends Bloc<SimpleTaskHandlerEvent, SimpleTaskHandlerState> {
  final ITaskMediator _mediator;
  StreamSubscription? _streamSubscription;

  SimpleTaskHandlerBloc({required ITaskMediator mediator})
      : _mediator = mediator,
        super(TasksLoadInProgress());

  SimpleTaskHandlerState get initialState => TasksLoadInProgress();

  @override
  Stream<SimpleTaskHandlerState> mapEventToState(
    SimpleTaskHandlerEvent event,
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
    }
  }

  Stream<SimpleTaskHandlerState> _mapTasksLoadedToState() async* {
    _streamSubscription?.cancel();
    _streamSubscription = _mediator.loadTasks().listen(
      (tasks) {
        add(
          TasksChanged(tasks),
        );
      },
    );
  }

  Stream<SimpleTaskHandlerState> _mapTaskAddedToState(TaskAdded event) async* {
    _mediator.createTask(event.taskEntity);
  }

  Stream<SimpleTaskHandlerState> _mapTaskUpdatedToState(
      TaskUpdated event) async* {
    _mediator.updateTask(event.taskEntity);
  }

  Stream<SimpleTaskHandlerState> _mapTaskDeletedToState(
      TaskDeleted event) async* {
    _mediator.deleteTask(event.taskEntity);
  }

  Stream<SimpleTaskHandlerState> _mapClearCompletedToState() async* {}

  Stream<SimpleTaskHandlerState> _mapToggleAllTasksToState() async* {}

  Stream<SimpleTaskHandlerState> _mapTasksChangedToState(
      TasksChanged event) async* {
    yield TasksLoadSuccess(event.tasksEntities);
  }
}
