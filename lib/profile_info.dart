import 'package:flutter/material.dart';
import 'gradiente_fondo.dart';

class profile_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pathImage = "assets/img/ann.jpg";

    // TODO: implement build
    final foto = Container(
      height: 90,
      width: 90,
      padding: EdgeInsets.all(3.0), // ajusta el tamaño del margen
      decoration: BoxDecoration(
        color: Colors.white60,
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
      child: Text(
        "Pathum Zoo",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Righteotus",
            fontSize: 30,
            color: Colors.white,
          )
      ),
    );

    final correo_electronico = Container(
      child: Text(
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
      width: 190,
      margin: EdgeInsets.only(
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
      margin:EdgeInsets.only(
        top:100,
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
    final favoritos = Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,// redondea los bordes del margen

      ),
      child: const Icon(
        Icons.bookmark_add_outlined,
        color: Color(0xDA370F65),
        size: 18,
      ),
    );
    final regalo = Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,// redondea los bordes del margen

          ),
          child: const Icon(
            Icons.badge_outlined,
            color: Color(0xDA370F65),
            size: 18,
          ),
        );
    final agregar = Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,// redondea los bordes del margen

      ),
      child: const Icon(
        Icons.add,
        color: Color(0xDA370F65),
        size: 40,
      ),
    );
    final email = Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,// redondea los bordes del margen

      ),
      child: const Icon(
        Icons.email_outlined,
        color: Color(0xDA370F65),
        size: 18,
      ),
    );
    final profile = Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,// redondea los bordes del margen

      ),
      child: const Icon(
        Icons.person,
        color: Color(0xDA370F65),
        size: 18,
      ),
    );
    final botones_navegacion = Container(
      margin: EdgeInsets.only(
        top:10,

      ),
      child:  Row(
        children: [
          Expanded(child: favoritos),
          Expanded(child: regalo),
          Expanded(child: agregar),
          Expanded(child: email),
          Expanded(child: profile),
        ],
      ),
    );


    final encabezado_profile = Column(
      children: [
            informacion_basica_usuario,
            botones_navegacion,
          ],
    );

    return Stack(
      children: [
        GradientBack("Profile", 350),
        encabezado_profile
      ],
    );

  }

}