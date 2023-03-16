import 'package:flutter/material.dart';
import 'fotos_creacion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override


  Widget build(BuildContext context) {


    final tres_fotos = Row(
      children: [
        crea_foto("https://www.fundacionaquae.org/wp-content/uploads/2018/10/proteger-a-los-animales-1024x654.jpg.webp"),
        crea_foto("https://www.nationalgeographic.com.es/medio/2022/12/12/ardilla-2_d0a43045_221212154055_310x310.jpg"),
        crea_foto("https://www.bioparcvalencia.es/wp-content/uploads/2017/06/ficha-animal-bioparc-valencia-leon.jpg"),
      ],
    );

    final tres_fotos2 = Row(
      children: [
        crea_foto("https://assets.afcdn.com/story/20161017/989289_w1200h630c1cx511cy250.jpg"),
        crea_foto("https://static.nationalgeographicla.com/files/styles/image_3200/public/nationalgeographic2769664.jpg?w=1600&h=900"),
        crea_foto("https://www.bioparcvalencia.es/wp-content/uploads/2017/06/ficha-animal-bioparc-valencia-leon.jpg"),
      ],
    );

    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Text('Esta es la AppBar aqui'),
        ),*/
        body: Column(
          children: [
            tres_fotos,
            tres_fotos2,
            tres_fotos,
            tres_fotos2
          ],
        )
      ),
    );
  }
}