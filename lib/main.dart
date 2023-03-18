import 'package:flutter/material.dart';
import 'fotos_creacion.dart';
import 'gradiente_fondo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override


  Widget build(BuildContext context) {


    final tres_fotos = Container (
        height: 250,
        child:
            ListView(
              padding: EdgeInsets.all(40.0),
              scrollDirection: Axis.horizontal,
              children: [
                crea_foto("assets/img/antman.jpg"),
                crea_foto("assets/img/avater.jpg"),
                crea_foto("assets/img/jaloween.jpg"),
                crea_foto("assets/img/loki.jpg"),
                crea_foto("assets/img/shazam.jpg"),
                crea_foto("assets/img/toystory.jpg"),
              ],
            )
    );

    final cartelera = ListView(
      children: [
        tres_fotos,
        tres_fotos,
        tres_fotos,
        tres_fotos
      ],
    );

    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Text('Esta es la AppBar aqui'),
        ),*/
        body: Stack (
          children: [
            GradientBack(),
            cartelera,

          ],
        )

      ),
    );
  }
}