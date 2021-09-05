import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipelist/presentation/screens/home_screen.dart';

import 'application/blocs/list_handler/list_handler_bloc.dart';
import 'application/blocs/navigation_handler/navigation_bloc.dart';
import 'application/blocs/task_handler/task_handler_bloc.dart';
import 'infrastructure/repositories/firestore_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(PipelistApp());
}

class PipelistApp extends StatelessWidget {
  final _firestoreRepository = FirestoreRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pipelist',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<NavigationBloc>(
            create: (context) => NavigationBloc()..add(AppStarted()),
          ),
          BlocProvider<TaskHandlerBloc>(
            create: (context) {
              return TaskHandlerBloc(mediator: _firestoreRepository)
                ..add(TasksLoaded());
            },
          ),
          BlocProvider<ListHandlerBloc>(
            create: (context) {
              return ListHandlerBloc(mediator: _firestoreRepository)
                ..add(ListsLoaded());
            },
          ),
        ],
        child: HomeScreen(),
      ),
    );
  }
}
