import 'package:flutter/material.dart';
import 'main_section.dart';
import "profile_section.dart";
import "red_section.dart";


class muestra_menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final botones_navegacion = Container(
      margin: EdgeInsets.only(
        top:10,

      ),
      child:  Row(
        children: const [
          Expanded(child: IconoPequeno(icono: Icons.bookmark_add_outlined, size: 35.0, action: "rojo")),
          Expanded(child: IconoPequeno(icono: Icons.badge_outlined, size: 35.0, action: "tarjeta")),
          Expanded(child: IconoPequeno(icono: Icons.add, size: 55.0, action: "mas")),
          Expanded(child: IconoPequeno(icono: Icons.email_outlined, size: 35.0, action: "email")),
          Expanded(child: IconoPequeno(icono: Icons.person, size: 35.0, action: "profile")),


        ],
      ),
    );

    return botones_navegacion;
  }

}


class IconoPequeno extends StatelessWidget {
  final IconData icono;
  final double size;
  final String action;
  const IconoPequeno({Key? key, required this.icono, this.size = 30.0, required this.action}) : super(key: key);
  @override


  Widget build(BuildContext context) {
    var accion_url = MaterialPageRoute(builder: (context) => muestra_main());

    if (action == "mas") {
        accion_url = MaterialPageRoute(builder: (context) => muestra_main());
    }
    else if (action == "profile") {
      accion_url = MaterialPageRoute(builder: (context) => muestra_profile());
    }
    else if (action == "rojo") {
      accion_url = MaterialPageRoute(builder: (context) => muestra_red());
    }
    else {
      accion_url = MaterialPageRoute(builder: (context) => muestra_main());
    }

    final salida = GestureDetector(
        onTap: () {
      Navigator.push(
        context,
        accion_url,
      );
    },
    child: Container(
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
    )
    );
    return salida;
  }
}