import 'package:flutter/material.dart';
import 'menu.dart';


class muestra_red extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            body: Container(
              color: Colors.red,
              height: 500,
              width: 500,
              child: muestra_menu(),
            )
        )
    );
  }

}