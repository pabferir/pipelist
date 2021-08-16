import 'package:dartz/dartz.dart';
import 'package:pipelist/domain/shared/failures.dart';
import 'package:kt_dart/kt.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptyField(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, maxLength: maxLength));
  }
}

Either<ValueFailure<String>, String> validateSingleLineString(String input) {
  if (!(input.contains('\n'))) {
    return right(input);
  } else {
    return left(ValueFailure.multilineField(failedValue: input));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingListLength(
        failedValue: input, maxLength: maxLength));
  }
}

Either<ValueFailure<DateTime>, DateTime> validateDateIsNotPassed(
    DateTime input) {
  if (input.isAfter(DateTime.now())) {
    return right(input);
  } else {
    return left(ValueFailure.dateAlreadyPassed(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validatePriorityIsInRange(int input) {
  if (input >= 0 && input <= 3) {
    return right(input);
  } else {
    return left(ValueFailure.priorityOutOfRange(failedValue: input));
  }
}
