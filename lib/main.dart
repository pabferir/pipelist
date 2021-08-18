import 'package:flutter/material.dart';
import 'package:pipelist/presentation/navigation/navigation_screen.dart';
import 'package:pipelist/presentation/shared/themes.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pipelist',
      theme: lightThemeData(context),
      home: NavigationScreen(),
    );
  }
}
