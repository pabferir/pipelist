import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_failure.freezed.dart';

@freezed
abstract class TaskFailure with _$TaskFailure {
  const factory TaskFailure.unexpected() = _Unexpected;
  const factory TaskFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory TaskFailure.unableToUpdate() = _UnableToUpdate;
}
