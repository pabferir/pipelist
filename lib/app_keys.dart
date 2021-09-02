import 'package:flutter/widgets.dart';

class AppKeys {
  static const tasksLoading = Key('__tasksLoading__');
  static final taskItem = (String id) => Key('TaskItem__$id');
  static final taskItemCheckbox =
      (String id) => Key('TaskItem__${id}__Checkbox');
  static final taskItemTitle = (String id) => Key('TaskItem__${id}__Title');
  static final taskItemListId = (String id) => Key('TaskItem__${id}__ListId');

  static final taskListEmptyContainer = const Key('__taskListEmptyContainer__');
}
