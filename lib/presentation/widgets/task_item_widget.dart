import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pipelist/domain/entities/task_entity.dart';
import 'package:pipelist/app_keys.dart';

class TaskItem extends StatelessWidget {
  final DismissDirectionCallback onDismissed;
  final GestureTapCallback onTap;
  final ValueChanged<bool?>? onCompleteToggle;
  final TaskEntity task;

  const TaskItem({
    Key? key,
    required this.onDismissed,
    required this.onTap,
    required this.onCompleteToggle,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: AppKeys.taskItem(task.id),
      child: ListTile(
        onTap: onTap,
        leading: Checkbox(
          key: AppKeys.taskItemCheckbox(task.id),
          value: task.isComplete,
          onChanged: onCompleteToggle,
        ),
        title: Hero(
          tag: '${task.id}__heroTag',
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              task.title,
              key: AppKeys.taskItemTitle(task.id),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ),
    );
  }
}
