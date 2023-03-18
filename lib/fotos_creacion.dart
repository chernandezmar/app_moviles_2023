import 'package:flutter/material.dart';

class crea_foto extends StatelessWidget {
  String path_imagen="assets/img/toystory.jpg";
  crea_foto(this.path_imagen);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final fotito = Container(
      height: 100,
      width: 200,
      margin: EdgeInsets.only(
        left:30,
        top:10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(path_imagen),
          //whatever image you can put here
          fit: BoxFit.cover,
        ),
      ),
    );

    return fotito;
  }

}