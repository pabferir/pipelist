import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pipelist/application/tasks/task_actor/task_actor_bloc.dart';
import 'package:pipelist/application/tasks/task_watcher/task_watcher_bloc.dart';
import 'package:flushbar/flushbar_helper.dart';

GetIt getIt = GetIt.instance;

class TaskOverviewPage extends StatelessWidget {
  const TaskOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TaskWatcherBloc>(
            create: (context) => getIt<TaskWatcherBloc>()
              ..add(const TaskWatcherEvent.watchUncompletedStarted())),
        BlocProvider<TaskActorBloc>(
          create: (context) => getIt<TaskActorBloc>(),
        ),
      ],
      child: BlocListener<TaskActorBloc, TaskActorState>(
        listener: (context, state) {
          state.maybeMap(
              deleteFailure: (state) {
                FlushbarHelper.createError(
                  duration: const Duration(seconds: 5),
                  message: state.taskFailure.map(
                    unexpected: (_) => 'Something unexpected happened',
                    insufficientPermissions: (_) => 'Insufficient permissions',
                    unableToUpdate: (_) => 'Unable to update',
                  ),
                ).show(context);
              },
              orElse: () {});
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Inbox'),
            leading: IconButton(
                icon: Icon(Icons.account_circle_outlined), onPressed: () {}),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search_rounded), onPressed: () {})
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // TODO: Navigate to TasFormPage
            },
            child: Icon(Icons.add_rounded),
          ),
        ),
      ),
    );
  }
}
