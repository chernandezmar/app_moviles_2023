import 'package:flutter/material.dart';
import 'gradiente_fondo.dart';
import 'menu.dart';
import 'paisaje_card.dart';

class profile_info extends StatelessWidget {
  const profile_info({super.key});

  @override
  Widget build(BuildContext context) {
    String pathImage = "assets/img/krlos.jpg";

    final foto = Container(
      height: 90,
      width: 90,
      padding: const EdgeInsets.all(3.0), // ajusta el tamaño del margen
      decoration: const BoxDecoration(
        color: Colors.white70,
        shape: BoxShape.circle,// redondea los bordes del margen

      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pathImage),
            fit: BoxFit.cover,
          ),
            shape: BoxShape.circle
            //borderRadius: BorderRadius.circular(50.0), // redondea los bordes de la imagen
        ),
      ),
    );

    final nombre_usuario = Container(
      child: const Text(
        "Pathum Zoo",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Righteotus",
            fontSize: 20,
            color: Colors.white,
          )
      ),
    );

    final correo_electronico = Container(
      child: const Text(
        "pathumzoo@gmail.com",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 14,
            color: Colors.white,
          )
      ),
    );

    final info_user = Container(
      height: 60,
      //width: 290,
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nombre_usuario,
          correo_electronico
        ],
      ),
    );

    final informacion_basica_usuario = Container(
      margin:const EdgeInsets.only(
        top:50,
        left:50,
      ),
      child:  Row (
        children: [
          foto,
          info_user
        ],
      ),
    );
    //Aqui definimos los botones de navegacion


    final encabezado_profile = Column(
      children: [
            informacion_basica_usuario,
            muestra_menu(),
          ],
    );

    final paisaje_list=Container(
      margin: const EdgeInsets.only(
          top: 180,
      ),
      child: ListView(
        children: [
          PaisajeCard("assets/img/beach.jpeg", "MonteAlban", "Hiking, Water fall hunting, Natural bath, Scenary & Photography", "Steps  123,123,123" ),
          PaisajeCard("assets/img/river.jpeg", "Mitla", "Hiking, Water fall hunting, Natural bath, Scenary & Photography", "Steps  23 456"),
          PaisajeCard("assets/img/beach_palm.jpeg", "Monterrey", "Hiking, Water fall hunting, Natural bath, Scenary & Photography", "Steps  567 890"),
          PaisajeCard("assets/img/mountain.jpeg", "Oaxaca", "Hiking, Water fall hunting, Natural bath, Scenary & Photography", "Steps  987 654"),
          PaisajeCard("assets/img/mountain_stars.jpeg", "CDMX", "Hiking, Water fall hunting, Natural bath, Scenary & Photography", "Steps  654 321 321"),
        ],
      ),
    );

    final infoRegreso = Stack(
      children: [
        GradientBack("Profile", 320),
        paisaje_list,
        //GradientBack("Profile", 210),
        encabezado_profile,
      ],
    );


    return MaterialApp(
        home: Scaffold(
        body: infoRegreso
    )
    );

  }

}


