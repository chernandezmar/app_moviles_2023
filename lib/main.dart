import 'package:flutter/material.dart';
import 'main_section.dart';
import 'profile_section.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: muestra_main()
        //Esta es la seccion que habiamos trabajado, esta en main_section.dart
        //muestra_main()

      ),
    );
  }
}
