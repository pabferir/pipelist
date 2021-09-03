import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipelist/application/blocs/task_handler/task_handler_bloc.dart';
import 'package:pipelist/presentation/widgets/add_edit_task_form.dart';
import 'package:pipelist/presentation/widgets/task_item_widget.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskHandlerBloc, TaskHandlerState>(
      builder: (context, state) {
        if (state is TasksLoadInProgress) {
          return Center(child: CircularProgressIndicator());
        } else if (state is TasksLoadSuccess) {
          final tasks = state.loadedTasks;
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.0,
              vertical: 20.0,
            ),
            child: ListView.builder(
              key: UniqueKey(),
              itemCount: tasks.length,
              itemBuilder: (BuildContext context, int index) {
                final task = tasks[index];
                return TaskItem(
                  task: task,
                  onDismissed: (direction) {
                    BlocProvider.of<TaskHandlerBloc>(context)
                        .add(TaskDeleted(task));
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Task deleted'),
                    )); // UPDATE FOR ON UNDE
                  },
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (_) => AddEditTaskForm(
                        key: UniqueKey(),
                        isEdit: true,
                        task: task,
                        onSaveCallback: (title) {
                          BlocProvider.of<TaskHandlerBloc>(context).add(
                            TaskUpdated(
                              task.copyWith(
                                title: title,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                  onCompleteToggle: (_) {
                    BlocProvider.of<TaskHandlerBloc>(context).add(
                      TaskUpdated(
                        task.copyWith(
                          isComplete: !task.isComplete,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          );
        } else {
          return Container(key: UniqueKey());
        }
      },
    );
  }
}
