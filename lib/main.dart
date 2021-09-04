import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipelist/presentation/screens/home_screen.dart';

import 'application/blocs/navigation_handler/navigation_bloc.dart';

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
