import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipelist/application/tasks/task_watcher/task_watcher_bloc.dart';

class TasksOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskWatcherBloc, TaskWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final task = state.tasks[index];
                if (task.failureOption.isSome()) {
                  return Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  );
                } else {
                  return Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  );
                }
              },
              itemCount: state.tasks.size,
            );
          },
          loadFailure: (state) {
            return Container(
              color: Colors.yellow,
              width: 200,
              height: 200,
            );
          },
        );
      },
    );
  }
}
