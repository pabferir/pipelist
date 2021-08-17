part of 'task_actor_bloc.dart';

@freezed
class TaskActorEvent with _$TaskActorEvent {
  const factory TaskActorEvent.deleted(TaskEntity task) = _Deleted;
}
