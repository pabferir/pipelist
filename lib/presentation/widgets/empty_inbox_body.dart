import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmptyInbox extends StatelessWidget {
  const EmptyInbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.inbox_outlined,
            size: 120.0,
            color: Color(0x73A99073),
          ),
          Text(
            'No hay tareas',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
              color: Color(0x73A99073),
            ),
          ),
        ],
      ),
    );
  }
}
