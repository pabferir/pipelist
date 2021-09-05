import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipelist/application/blocs/bloc/clarify_bloc.dart';
import 'package:pipelist/application/blocs/list_handler/list_handler_bloc.dart';
import 'package:pipelist/application/blocs/task_handler/task_handler_bloc.dart';
import 'package:pipelist/presentation/widgets/add_edit_task_form.dart';
import 'package:pipelist/presentation/widgets/task_item_widget.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext widgetContext) {
    final listBloc = BlocProvider.of<ListHandlerBloc>(widgetContext);
    final clarifyBloc = BlocProvider.of<ClarifyBloc>(widgetContext);

    return BlocBuilder<TaskHandlerBloc, TaskHandlerState>(
      builder: (newContext, state) {
        if (state is TasksInInboxLoadInProgress) {
          return Center(child: CircularProgressIndicator());
        } else if (state is TasksInInboxLoadSuccess) {
          final tasks = state.loadedTasks;
          if (tasks.isEmpty) {
            return _showEmptyPageLayout();
          } else {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 20.0,
              ),
              child: Column(
                children: [
                  RawMaterialButton(
                      child: Icon(Icons.filter_alt),
                      onPressed: () {
                        BlocProvider.of<ClarifyBloc>(widgetContext)
                            .add(ClarifyStarted());

                        // print(BlocProvider.of<ClarifyBloc>(widgetContext)
                        //     .state);
                        final tasksBlocState =
                            BlocProvider.of<TaskHandlerBloc>(widgetContext)
                                .state;
                        // print(tasksBlocState);
                        if (tasksBlocState is TasksInInboxLoadSuccess) {
                          final inboxTasks = tasksBlocState.loadedTasks;
                          // get task
                          // while (clarifystate is clarifyinprogress)
                          inboxTasks.forEach((task) {
                            {
                              if (clarifyBloc.state is ClarifyInProgress) {
                                clarifyBloc..add(ClarifyEditStarted());
                                print(clarifyBloc.state);
                                print(task);
                                showModalBottomSheet(
                                  context: newContext,
                                  builder: (_) {
                                    return BlocProvider.value(
                                      value: listBloc,
                                      child: BlocBuilder<ListHandlerBloc,
                                          ListHandlerState>(
                                        builder:
                                            (newContext, listHandlerState) {
                                          print('object');
                                          if (listHandlerState
                                              is ListsLoadSuccess) {
                                            return AddEditTaskForm(
                                              key: UniqueKey(),
                                              isEdit: true,
                                              task: task,
                                              lists:
                                                  listHandlerState.loadedLists,
                                              onSaveCallback: (title, listId) {
                                                BlocProvider.of<
                                                            TaskHandlerBloc>(
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
                                                child:
                                                    CircularProgressIndicator());
                                        },
                                      ),
                                    );
                                  },
                                ).then(
                                  (_) {
                                    if (inboxTasks.isEmpty) {
                                      BlocProvider.of<ClarifyBloc>(
                                              widgetContext)
                                          .add(ClarifyEnded());
                                    } else {
                                      BlocProvider.of<ClarifyBloc>(
                                              widgetContext)
                                          .add(ClarifyStarted());
                                    }
                                  },
                                );
                              }
                            }
                          });
                          print(clarifyBloc.state);
                          _showErrorPageLayout();
                          print(clarifyBloc.state);
                        } else
                          Text('no se han cargado en inbox');
                      }),
                  SizedBox(
                    height: 200,
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
                            ScaffoldMessenger.of(widgetContext).showSnackBar(
                              SnackBar(
                                content: Text('Tarea eliminada'),
                                action: SnackBarAction(
                                  label: 'DESHACER',
                                  onPressed: () {
                                    BlocProvider.of<TaskHandlerBloc>(
                                            widgetContext)
                                        .add(TaskAdded(task));
                                  },
                                ),
                              ),
                            );
                          },
                          onTap: () {
                            showModalBottomSheet(
                              context: widgetContext,
                              builder: (_) {
                                return BlocProvider.value(
                                  value: listBloc,
                                  child: BlocBuilder<ListHandlerBloc,
                                      ListHandlerState>(
                                    builder: (newContext, listHandlerState) {
                                      if (listHandlerState
                                          is ListsLoadSuccess) {
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
                  ),
                ],
              ),
            );
          }
        } else if (state is TasksLoadFailure)
          return _showErrorPageLayout();
        else
          return Center(child: CircularProgressIndicator());
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
