import 'package:flutter/material.dart';
import 'descripcion_lugar.dart';
import 'reviews_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Text('Esta es la AppBar aqui'),
        ),*/
        body: Column(
          children: [
            Descripcion_lugar(),
            reviews_info(),
          ],
        )
      ),
    );
  }
}
