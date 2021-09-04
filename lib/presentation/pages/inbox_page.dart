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
      builder: (newContext, state) {
        if (state is TasksLoadInProgress) {
          return Center(child: CircularProgressIndicator());
        } else if (state is TasksLoadSuccess) {
          final tasks = state.loadedTasks;
          if (tasks.isEmpty) {
            return _showEmptyPageLayout();
          } else {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 20.0,
              ),
              child: ListView.builder(
                key: UniqueKey(),
                itemCount: tasks.length,
                itemBuilder: (BuildContext newContext, int index) {
                  final task = tasks[index];
                  return TaskItemWidget(
                    task: task,
                    onDismissed: (direction) {
                      BlocProvider.of<TaskHandlerBloc>(context)
                          .add(TaskDeleted(task));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Tarea eliminada'),
                          action: SnackBarAction(
                            label: 'DESHACER',
                            onPressed: () {
                              BlocProvider.of<TaskHandlerBloc>(context)
                                  .add(TaskAdded(task));
                            },
                          ),
                        ),
                      );
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
          }
        }
        return _showErrorPageLayout();
      },
    );
  }

  Widget _showEmptyPageLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.inbox_outlined,
            size: 120.0,
            // color: Color(0x73A99073),
          ),
          Text(
            'No hay tareas',
            // style: TextStyle(
            //   fontWeight: FontWeight.w900,
            //   fontSize: 28,
            //   color: Color(0x73A99073),
            // ),
          ),
        ],
      ),
    );
  }

  Widget _showErrorPageLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Error al cargar las tareas',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
