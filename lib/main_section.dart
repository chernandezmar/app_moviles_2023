import 'package:flutter/material.dart';
import 'descripcion_lugar.dart';
import 'lista_reviewers.dart';
import 'encabezado_appbar.dart';
import 'menu.dart';


class muestra_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            body: Stack (
              children: [
                ListView(
                  children: [
                    Descripcion_lugar(),
                    lista_reviewers()
                  ],
                ),
                Encabezado(),
                muestra_menu(),
              ],
            )
        )
    );
  }

}