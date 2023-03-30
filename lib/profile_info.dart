import 'package:flutter/material.dart';
import 'gradiente_fondo.dart';

class profile_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pathImage = "assets/img/krlos.jpg";

    final foto = Container(
      height: 90,
      width: 90,
      padding: EdgeInsets.all(3.0), // ajusta el tamaño del margen
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
    final botones_navegacion = Container(
      margin: EdgeInsets.only(
        top:10,

      ),
      child:  Row(
        children: const [
          Expanded(child: IconoPequeno(icono: Icons.bookmark_add_outlined, size: 35.0)),
          Expanded(child: IconoPequeno(icono: Icons.badge_outlined, size: 35.0)),
          Expanded(child: IconoPequeno(icono: Icons.add, size: 55.0)),
          Expanded(child: IconoPequeno(icono: Icons.email_outlined, size: 35.0)),
          Expanded(child: IconoPequeno(icono: Icons.person, size: 35.0)),


        ],
      ),
    );

    final encabezado_profile = Column(
      children: [
            informacion_basica_usuario,
            botones_navegacion,
          ],
    );

    final paisaje_list=Container(
      margin: EdgeInsets.only(
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

    return Stack(
      children: [
        GradientBack("Profile", 320),
        paisaje_list,
        //GradientBack("Profile", 210),
        encabezado_profile,
      ],
    );

  }

}

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
        width:370,
        height: 200,
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.only(
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
      margin: EdgeInsets.only(
          top: 9,
      ),
      child: Text(
          namePlace_text,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Lato",
            fontWeight: FontWeight.w900,
            fontSize: 17,
            color: Colors.black,
          )
      ),
    );

    final activities = Container(
      width: 150,
      margin: EdgeInsets.only(
        top: 5,
      ),
      child: Text(
          activities_text,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 10,
            color: Colors.black45,
          )
      ),
    );

    final steps = Container(
      width: 195,
      margin: EdgeInsets.only(
        top: 5,
      ),
      child: Text(
          steps_text,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15,
            color: Color(0xFFF79526),
            fontWeight: FontWeight.w900,
          )
      ),
    );

    final info_text=Container(
      margin: EdgeInsets.only(
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
      height: 90,
      margin: EdgeInsets.only(
          top: 160
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow (
              color:  Colors.black38,
              blurRadius: 34.0,
              offset: Offset(0.0, 15.0)
          )
        ],
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFFFFFFFF),
        shape: BoxShape.rectangle,// redondea los bordes del margen

      ),
      child: info_text,
    );

    final paisaje_icono=Container(
        width: 30,
        height: 30,
        margin: EdgeInsets.only(
          top: 225,
          left: 210,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFF18DB59),
          shape: BoxShape.circle,// redondea los bordes del margen
        ),
        child: Icon(
          Icons.favorite,
          size: 16,
          color: Color(0xFFFFFFFF),
        )
    );

    return Stack(
      children: [
        paisaje_foto,
        paisaje_info,
        paisaje_icono,
      ],
      alignment: Alignment(0.0, -1.0),
    );
  }


}

class IconoPequeno extends StatelessWidget {
  final IconData icono;
  final double size;
  const IconoPequeno({Key? key, required this.icono, this.size = 30.0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final salida = Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
        color: Color(0xEEFFFFFF),
        shape: BoxShape.circle,// redondea los bordes del margen

        ),
      child: Icon(
            icono,
            size: (size-13),
            color: const Color(0xFF4369D3),
           )
      );
    return salida;
  }
}