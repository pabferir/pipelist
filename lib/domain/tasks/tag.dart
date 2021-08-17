import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pipelist/domain/shared/failures.dart';
import 'package:pipelist/domain/shared/value_objects.dart';
import 'package:pipelist/domain/tasks/value_objects.dart';

part 'tag.freezed.dart';

@freezed
abstract class Tag with _$Tag {
  const Tag._();

  const factory Tag({
    @required UniqueId? id,
    @required TagTitle? title,
  }) = _Tag;

  factory Tag.empty() => Tag(id: UniqueId(), title: TagTitle(''));

  Option<ValueFailure<dynamic>> get failureOption {
    return title!.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
