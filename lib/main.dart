import 'package:flutter/material.dart';
import 'descripcion_lugar.dart';
import 'reviews_info.dart';
import 'encabezado_appbar.dart';

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
        body:
            Stack (
              children: [
                ListView(

                  children: [
                    Descripcion_lugar(),
                    reviews_info("assets/img/people.jpg", "Carlos", "1 review · 5 photos", "Wooooooow"),
                    reviews_info("assets/img/girl.jpg", "Girl", "1 review · 5 photos", "Que bonito"),
                    reviews_info("assets/img/ann.jpg", "user03", "1 review · 5 photos", "Que bonito"),
                    reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
                    reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
                    reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
                    reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
                    reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
                    reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
                    reviews_info("assets/img/beach_palm.jpeg", "otro", "1 review · 5 photos", "Que bonito"),
                  ],
                ),
                GradientBack(),
              ],
            )

      ),
    );
  }
}
