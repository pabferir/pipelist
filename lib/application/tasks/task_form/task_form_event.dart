part of 'task_form_bloc.dart';

@freezed
class TaskFormEvent with _$TaskFormEvent {
  const factory TaskFormEvent.initialized(Option<TaskEntity> initialTask) =
      _Initialized;
  const factory TaskFormEvent.titleChanged(String newTitle) = _TitleChanged;
  const factory TaskFormEvent.isDoneChanged(bool newIsDone) = _IsDoneChanged;
  const factory TaskFormEvent.priorityChanged(int newPriority) =
      _PriorityChanged;
  const factory TaskFormEvent.descriptionChanged(String newDescription) =
      _DescriptionChanged;
  const factory TaskFormEvent.startDateChanged(DateTime newStartDate) =
      _StartDateChanged;
  const factory TaskFormEvent.dueDateChanged(DateTime newDueDate) =
      _DueDateChanged;
  const factory TaskFormEvent.reminderChanged(DateTime newReminder) =
      _ReminderChanged;
  const factory TaskFormEvent.tagsChanged(KtList<TagPrimitive> newTags) =
      _TagsChanged;
  const factory TaskFormEvent.subtasksChanged(
      KtList<SubtaskPrimitive> newSubtasks) = _SubtasksChanged;
  const factory TaskFormEvent.saved() = _Saved;
}
