import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContextsPage extends StatelessWidget {
  const ContextsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.fact_check_outlined,
              size: 120.0,
              // color: Color(0x73A99073),
            ),
            Text(
              'No hay contextos',
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
