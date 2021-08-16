import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  // Task Value Failures
  const factory ValueFailure.emptyField({
    @required T? failedValue,
  }) = EmptyField<T>;

  const factory ValueFailure.noListId({
    @required T? failedValue,
  }) = NoListId<T>;

  const factory ValueFailure.exceedingLenght({
    @required T? failedValue,
    @required int? maxLength,
  }) = ExceedingLength<T>;

  const factory ValueFailure.exceedingListSize({
    @required T? failedValue,
    @required int? maxLength,
  }) = ExceedingListSize<T>;

  const factory ValueFailure.dateAlreadyPassed({
    @required T? failedValue,
  }) = DateAlreadyPassed<T>;
}
