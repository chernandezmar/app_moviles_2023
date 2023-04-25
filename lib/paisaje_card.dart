import 'package:flutter/material.dart';

class PaisajeCard extends StatelessWidget {
  final String pathImg;
  final String namePlace_text;
  final String activities_text;
  final String steps_text;
  PaisajeCard(this.pathImg, this.namePlace_text, this.activities_text, this.steps_text);
  //PaisajeCard(this.pathImg);
  @override
  Widget build(BuildContext context) {
    //Paisaje fotos
    final paisaje_foto=Container(
        width:470,
        height: 300,
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.only(
            top: 12
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),// redondea los bordes de la imagen
            image: DecorationImage(
              image: AssetImage(pathImg),
              fit: BoxFit.cover,
            ),

          ),
        )
    );

    final namePlace = Container(
      margin: const EdgeInsets.only(
        top: 9,
      ),
      child: Text(
          namePlace_text,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontFamily: "Lato",
            fontWeight: FontWeight.w900,
            fontSize: 17,
            color: Colors.black,
          )
      ),
    );

    final activities = Container(
      width: 150,
      margin: const EdgeInsets.only(
        top: 5,
      ),
      child: Text(
          activities_text,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 9,
            color: Colors.black45,
          )
      ),
    );

    final steps = Container(
      width: 195,
      margin: const EdgeInsets.only(
        top: 5,
      ),
      child: Text(
          steps_text,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 15,
            color: Color(0xFFF79526),
            fontWeight: FontWeight.w900,
          )
      ),
    );

    final info_text=Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          namePlace,
          activities,
          steps,
        ],
      ),
    );

    final paisaje_info=Container(
      width: 270,
      //height: 110,
      margin: const EdgeInsets.only(
          top: 160
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          const BoxShadow (
              color:  Colors.black38,
              blurRadius: 34.0,
              offset: Offset(0.0, 15.0)
          )
        ],
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xFFFFFFFF),
        shape: BoxShape.rectangle,// redondea los bordes del margen

      ),
      child: info_text,
    );

    final paisaje_icono=Container(
        width: 30,
        height: 30,
        margin: const EdgeInsets.only(
          top: 225,
          left: 210,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFF18DB59),
          shape: BoxShape.circle,// redondea los bordes del margen
        ),
        child: const Icon(
          Icons.favorite,
          size: 16,
          color: Color(0xFFFFFFFF),
        )
    );


    final info_regreso = Stack(
      children: [
        paisaje_foto,
        paisaje_info,
        paisaje_icono,
      ],
      alignment: const Alignment(0.0, -1.0),
    );

    return info_regreso;
  }


}