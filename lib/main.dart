import 'package:flutter/material.dart';
import 'package:pipelist/presentation/navigation/main_screen.dart';
import 'package:pipelist/presentation/shared/themes.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pipelist',
      theme: lightThemeData(context),
      home: MainPage(),
    );
  }
}
