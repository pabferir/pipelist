import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:pipelist/domain/tasks/i_task_repository.dart';
import 'package:pipelist/domain/tasks/task.dart';
import 'package:pipelist/domain/tasks/task_failure.dart';
import 'package:pipelist/domain/tasks/value_objects.dart';
import 'package:pipelist/presentation/tasks/task_form/subtask_presentation_classes.dart';

part 'task_form_event.dart';
part 'task_form_state.dart';
part 'task_form_bloc.freezed.dart';

@injectable
class TaskFormBloc extends Bloc<TaskFormEvent, TaskFormState> {
  final ITaskRepository _taskRepository;

  TaskFormBloc(this._taskRepository) : super(TaskFormState.initial());

  TaskFormState get initialState => TaskFormState.initial();

  @override
  Stream<TaskFormState> mapEventToState(
    TaskFormEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      // yield e.initialTask.fold(
      //   () => state,
      //   (initialTask) => state.copyWith(
      //     task: initialTask,
      //     isEditing: true,
      //   ),
      // );
    }, titleChanged: (e) async* {
      yield state.copyWith(
        task: state.task!.copyWith(title: TaskTitle(e.newTitle)),
        saveFailureOrSuccessOption: none(),
      );
    }, isDoneChanged: (e) async* {
      yield state.copyWith(
        task: state.task!.copyWith(isDone: e.newIsDone),
        saveFailureOrSuccessOption: none(),
      );
    }, priorityChanged: (e) async* {
      yield state.copyWith(
        task: state.task!.copyWith(priority: Priority(e.newPriority)),
        saveFailureOrSuccessOption: none(),
      );
    }, descriptionChanged: (e) async* {
      yield state.copyWith(
        task: state.task!.copyWith(description: Description(e.newDescription)),
        saveFailureOrSuccessOption: none(),
      );
    }, startDateChanged: (e) async* {
      yield state.copyWith(
        task: state.task!.copyWith(startDate: e.newStartDate),
        saveFailureOrSuccessOption: none(),
      );
    }, dueDateChanged: (e) async* {
      yield state.copyWith(
        task: state.task!.copyWith(dueDate: e.newDueDate),
        saveFailureOrSuccessOption: none(),
      );
    }, reminderChanged: (e) async* {
      yield state.copyWith(
        task: state.task!.copyWith(reminder: Reminder(e.newReminder)),
        saveFailureOrSuccessOption: none(),
      );
    }, subtasksChanged: (e) async* {
      yield state.copyWith(
        task: state.task!.copyWith(
            subtasks: SubtaskList(
                e.newSubtasks.map((primitive) => primitive.toDomain()))),
        saveFailureOrSuccessOption: none(),
      );
    }, saved: (e) async* {
      late Either<TaskFailure, Unit> failureOrSuccess;

      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      );
      if (state.task!.failureOption.isNone()) {
        failureOrSuccess = state.isEditing!
            ? await _taskRepository.update(state.task!)
            : await _taskRepository.create(state.task!);
      }
      yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess));
    });
  }
}
