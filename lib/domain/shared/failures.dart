import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  // Task Value Failures
  const factory ValueFailure.emptyField({
    @required T? failedValue,
  }) = EmptyField<T>;

  const factory ValueFailure.multilineField({
    @required T? failedValue,
  }) = MultilineField<T>;

  const factory ValueFailure.exceedingLength({
    @required T? failedValue,
    @required int? maxLength,
  }) = ExceedingLength<T>;

  const factory ValueFailure.exceedingListLength({
    @required T? failedValue,
    @required int? maxLength,
  }) = ExceedingListLength<T>;

  const factory ValueFailure.dateAlreadyPassed({
    @required T? failedValue,
  }) = DateAlreadyPassed<T>;

  const factory ValueFailure.priorityOutOfRange({
    @required T? failedValue,
  }) = PriorityOutOfRange<T>;
}
