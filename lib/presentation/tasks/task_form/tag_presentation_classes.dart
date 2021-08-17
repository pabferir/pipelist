import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pipelist/domain/shared/value_objects.dart';
import 'package:pipelist/domain/tasks/tag.dart';
import 'package:pipelist/domain/tasks/value_objects.dart';

part 'tag_presentation_classes.freezed.dart';

@freezed
abstract class TagPrimitive with _$TagPrimitive {
  const TagPrimitive._();

  const factory TagPrimitive({
    @required UniqueId? id,
    @required String? title,
  }) = _TagPrimitive;

  factory TagPrimitive.empty() => TagPrimitive(
        id: UniqueId(),
        title: '',
      );

  factory TagPrimitive.fromDomain(Tag tag) {
    return TagPrimitive(
      id: tag.id!,
      title: tag.title!.getOrCrash(),
    );
  }

  Tag toDomain() {
    return Tag(
      id: id,
      title: TagTitle(title!),
    );
  }
}
