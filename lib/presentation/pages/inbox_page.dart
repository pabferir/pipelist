import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipelist/application/blocs/task_handler/task_handler_bloc.dart';
import 'package:pipelist/presentation/widgets/edit_task_form.dart';
import 'package:pipelist/presentation/widgets/task_item_widget.dart';

import '../../app_keys.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimpleTaskHandlerBloc, SimpleTaskHandlerState>(
      builder: (context, state) {
        if (state is TasksLoadInProgress) {
          return Center(child: CircularProgressIndicator());
        } else if (state is TasksLoadSuccess) {
          final tasks = state.loadedTasks;
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (BuildContext context, int index) {
              final task = tasks[index];
              return TaskItem(
                task: task,
                onDismissed: (direction) {
                  BlocProvider.of<SimpleTaskHandlerBloc>(context)
                      .add(TaskDeleted(task));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Task deleted'),
                  )); // UPDATE FOR ON UNDE
                },
                onTap: () async {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) {
                        return EditTaskForm(task: task);
                      },
                    ),
                  ).then((updatedTask) {
                    BlocProvider.of<SimpleTaskHandlerBloc>(context).add(
                      TaskUpdated(task.copyWith(
                        title: task.title,
                        listId: task.listId,
                        isComplete: task.isComplete,
                      )),
                    );
                  });
                },
                onCompleteToggle: (_) {
                  BlocProvider.of<SimpleTaskHandlerBloc>(context).add(
                    TaskUpdated(
                      task.copyWith(
                        isComplete: !task.isComplete,
                      ),
                    ),
                  );
                },
              );
            },
          );
        } else {
          return Container(key: AppKeys.taskListEmptyContainer);
        }
      },
    );
  }
}
