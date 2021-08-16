import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:pipelist/domain/shared/failures.dart';
import 'package:pipelist/domain/shared/value_objects.dart';
import 'package:pipelist/domain/shared/value_validators.dart';

class TaskTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 80;

  factory TaskTitle(String input) {
    return TaskTitle._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLineString),
    );
  }

  const TaskTitle._(this.value);
}

class Priority extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Priority(int input) {
    return Priority._(
      validatePriorityIsInRange(input),
    );
  }

  const Priority._(this.value);
}

class Description extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 160;

  factory Description(String input) {
    return Description._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLineString),
    );
  }

  const Description._(this.value);
}

class Reminder extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory Reminder(DateTime input) {
    return Reminder._(
      validateDateIsNotPassed(input),
    );
  }

  const Reminder._(this.value);
}

class TagList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 6;

  factory TagList(KtList<T> input) {
    return TagList._(
      validateMaxListLength(input, maxLength),
    );
  }

  const TagList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

class SubtaskList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 10;

  factory SubtaskList(KtList<T> input) {
    return SubtaskList._(
      validateMaxListLength(input, maxLength),
    );
  }

  const SubtaskList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
