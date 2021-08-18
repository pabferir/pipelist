import 'package:flutter/material.dart';
import 'package:pipelist/presentation/navigation/inbox_page.dart';
import 'package:pipelist/presentation/shared/themes.dart';

import 'lists_page.dart';
import 'review_page.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;
  List<Widget> _pages = <Widget>[
    InboxPage(),
    ListsPage(),
    ReviewPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: mPrimaryColor,
        child: Icon(
          Icons.add_rounded,
          color: mContentColorLightTheme,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.inbox_rounded), label: "Inbox"),
          BottomNavigationBarItem(
              icon: Icon(Icons.collections_bookmark_rounded), label: "Lists"),
          BottomNavigationBarItem(
              icon: Icon(Icons.visibility_rounded), label: "Review"),
        ],
        currentIndex: _currentIndex,
        onTap: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
