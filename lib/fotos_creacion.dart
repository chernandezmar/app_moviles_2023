import 'package:flutter/material.dart';

class crea_foto extends StatelessWidget {
  String path_imagen="https://www.nationalgeographic.com.es/medio/2022/12/12/ardilla-2_d0a43045_221212154055_310x310.jpg";
  crea_foto(this.path_imagen);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final fotito = Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.only(
        left:10,
        top:10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(path_imagen),
          //whatever image you can put here
          fit: BoxFit.cover,
        ),
      ),
    );

    return fotito;
  }

}