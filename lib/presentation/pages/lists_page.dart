import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListsPage extends StatelessWidget {
  const ListsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.book_outlined,
              size: 120.0,
              // color: Color(0x73A99073),
            ),
            Text(
              'No hay listas',
              // style: TextStyle(
              //   fontWeight: FontWeight.w900,
              //   fontSize: 28,
              //   color: Color(0x73A99073),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
