part of 'task_actor_bloc.dart';

@freezed
class TaskActorEvent with _$TaskActorEvent {
  const factory TaskActorEvent.deleted(Task task) = _Deleted;
}