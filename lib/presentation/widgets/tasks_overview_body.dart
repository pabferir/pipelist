import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipelist/application/blocs/task_reader/task_loader_bloc.dart';
import 'package:pipelist/presentation/widgets/empty_inbox_body.dart';

class TasksOverviewBody extends StatelessWidget {
  const TasksOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskLoaderBloc, TaskLoaderState>(
      builder: (context, state) {
        if (state is TaskLoaderInitial) {
          return EmptyInbox();
        } else if (state is TasksLoadInProgress) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TasksLoadSuccess) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final task = state.tasks[index];
              return Container(
                color: Colors.green,
                width: 100,
                height: 200,
              );
            },
            itemCount: state.tasks.length,
          );
        } else if (state is TasksLoadFailure) {
          return Container(
            color: Colors.yellow,
            width: 100,
            height: 200,
            child: Text('No state defined'),
          );
        } else
          return Container(
            color: Colors.red,
            width: 100,
            height: 200,
            child: Text('No state defined'),
          );
      },
    );
  }
}
