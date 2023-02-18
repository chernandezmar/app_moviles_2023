import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Mi aplicación - barra navegacion',
              style: TextStyle(
                color: Colors.black,
              ),
          ),
        ),
        body: Center(
          child: Text(
              '¡Hola, chicos de app moviles!',
            style: TextStyle(
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
