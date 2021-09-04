import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipelist/application/blocs/list_handler/list_handler_bloc.dart';
import 'package:pipelist/application/blocs/task_handler/task_handler_bloc.dart';
import 'package:pipelist/domain/entities/list_entity.dart';
import 'package:pipelist/presentation/widgets/add_edit_task_form.dart';
import 'package:pipelist/presentation/widgets/task_item_widget.dart';

class TaskListScreen extends StatelessWidget {
  final ListEntity list;

  const TaskListScreen({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext widgetContext) {
    final listBloc = BlocProvider.of<ListHandlerBloc>(widgetContext);

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              BlocProvider.of<TaskHandlerBloc>(widgetContext)
                ..add(TasksLoaded());
              Navigator.of(widgetContext).pop();
            },
          ),
          title: Text(list.title),
        ),
        body: BlocBuilder<TaskHandlerBloc, TaskHandlerState>(
            builder: (newContext, state) {
          if (state is TasksLoadInProgress) {
            return Center(child: CircularProgressIndicator());
          } else if (state is TasksLoadSuccess) {
            final tasks = state.loadedTasks;
            if (tasks.isEmpty) {
              return _showEmptyListLayout();
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
                        BlocProvider.of<TaskHandlerBloc>(widgetContext)
                            .add(TaskDeleted(task));
                        ScaffoldMessenger.of(widgetContext)
                            .showSnackBar(SnackBar(
                          content: Text('Tarea eliminada'),
                          action: SnackBarAction(
                            label: 'DESHACER',
                            onPressed: () {
                              BlocProvider.of<TaskHandlerBloc>(widgetContext)
                                  .add(TaskAdded(task));
                            },
                          ),
                        ));
                      },
                      onTap: () {
                        showModalBottomSheet(
                          context: newContext,
                          builder: (_) {
                            return BlocProvider.value(
                              value: listBloc,
                              child: BlocBuilder<ListHandlerBloc,
                                  ListHandlerState>(
                                builder: (widgetContext, listHandlerState) {
                                  if (listHandlerState is ListsLoadSuccess) {
                                    return AddEditTaskForm(
                                      key: UniqueKey(),
                                      isEdit: true,
                                      task: task,
                                      lists: listHandlerState.loadedLists,
                                      onSaveCallback: (title, listId) {
                                        BlocProvider.of<TaskHandlerBloc>(
                                                widgetContext)
                                            .add(
                                          TaskUpdated(
                                            task.copyWith(
                                              title: title,
                                              listId: listId,
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  } else
                                    return Center(
                                        child: CircularProgressIndicator());
                                },
                              ),
                            );
                          },
                        );
                      },
                      onCompleteToggle: (_) {
                        BlocProvider.of<TaskHandlerBloc>(widgetContext).add(
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
          } else if (state is TasksLoadFailure) {
            return _showErrorPageLayout();
          } else
            return _showUnexpectedBehaviuorLayout();
        }));
  }

  Widget _showEmptyListLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.task_outlined,
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

  Widget _showUnexpectedBehaviuorLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Ha sucedido algo inesperado',
            style: TextStyle(color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}
