import 'package:flutter/material.dart';

class Descripcion_lugar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final estrella = Container (
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      )
    );
    final estrella_mitad = Container (
        margin: EdgeInsets.only(
            top: 323.0,
            right: 3.0
        ),
        child: Icon(
          Icons.star_half,
          color: Colors.amber,
        )
    );

    final titulo_estrellado = Row (
      children: [
        Container (
          margin: EdgeInsets.only(
            top: 320.0,
            left:20.0,
            right:20.0
          ),
          child: Text(
            "Duwilli Ella",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            estrella,
            estrella,
            estrella,
            estrella,
            estrella_mitad
          ],
        )
      ],
    );

    return titulo_estrellado;
  }
  
}