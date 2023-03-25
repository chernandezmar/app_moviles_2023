import 'package:flutter/material.dart';

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
        color: Colors.black12, // establece el color del margen
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
          )
      ),
    );

    final correo_electronico = Container(
      child: Text(
        "pathumzoo@gmail.com",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 10,
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




    return Container(
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

  }

}