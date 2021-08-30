import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pipelist/application/blocs/task_reader/task_loader_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pipelist/presentation/widgets/tasks_overview_body.dart';

import 'infrastructure/repositories/task_firebase_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pipelist',
      theme: ThemeData(
          primaryColor: Color(0xFFFFF6E9),
          fontFamily: GoogleFonts.inter().fontFamily),
      home: MyHomePage(title: 'Entrada'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskLoaderBloc>(
      create: (context) {
        return TaskLoaderBloc(
          mediator: TaskFirebaseRepository(),
        )..add(ShowAllTasksStarted());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFF6E9),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xFFA99073),
                ),
                iconSize: 36,
                tooltip: 'Profile',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('No profile available')));
                },
              );
            },
          ),
          textTheme: GoogleFonts.sourceSerifProTextTheme(),
          centerTitle: true,
          title: Text(
            this.title,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Color(0xFFA99073),
              ),
              iconSize: 36,
              tooltip: 'Options',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('No options available')));
              },
            ),
          ],
        ),
        body: TasksOverviewBody(),
        backgroundColor: Color(0xFFFFF6E9),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFFFF6E9),
          items: [
            BottomNavigationBarItem(
              label: "Inbox",
              icon: Icon(
                Icons.inbox,
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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 24,
          unselectedIconTheme: IconThemeData(color: Color(0xFF000000)),
          selectedIconTheme: IconThemeData(color: Color(0xFF000000)),
        ),
      ),
    );
  }
}
