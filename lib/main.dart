import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipelist/application/blocs/task_handler/task_handler_bloc.dart';
import 'package:pipelist/infrastructure/repositories/firestore_repository.dart';
import 'package:pipelist/presentation/pages/contexts_page.dart';
import 'package:pipelist/presentation/pages/inbox_page.dart';
import 'package:pipelist/presentation/pages/lists_page.dart';
import 'package:pipelist/presentation/pages/reviews_page.dart';
import 'package:pipelist/presentation/widgets/add_task_form.dart';

import 'application/blocs/app_navigation_handler/app_navigation_handler_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(PipelistApp());
}

class PipelistApp extends StatelessWidget {
  const PipelistApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pipelist',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc()..add(AppStarted()),
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskHandlerBloc>(
      create: (context) {
        return TaskHandlerBloc(mediator: FirestoreRepository())
          ..add(TasksLoaded());
      },
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, activePage) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Pipelist'), // Cambiar por contexto
            ),
            body: _resolveCurrentPage(activePage),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex:
                  BlocProvider.of<NavigationBloc>(context).currentPageIndex,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  label: "Inbox",
                  icon: Icon(
                    Icons.inbox_outlined,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Lists",
                  icon: Icon(
                    Icons.book_outlined,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Add",
                  icon: Icon(
                    Icons.add_rounded,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Contexts",
                  icon: Icon(
                    Icons.fact_check_outlined,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Reviews",
                  icon: Icon(
                    Icons.local_cafe_outlined,
                  ),
                ),
              ],
              onTap: (index) => BlocProvider.of<NavigationBloc>(context)
                  .add(PageUpdated(pageIndex: index)),
            ),
          );
        },
      ),
    );
  }

  _resolveCurrentPage(NavigationState activePage) {
    if (activePage is InboxPageLoadSucceded)
      return InboxPage();
    else if (activePage is ListsPageLoadSucceded)
      return ListsPage();
    else if (activePage is AddFormLoadSucceded)
      return AddTaskForm();
    else if (activePage is ContextsPageLoadSucceded)
      return ContextsPage();
    else if (activePage is ReviewsPageLoadSucceded) return ReviewsPage();
  }
}
