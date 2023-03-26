import 'package:flutter/material.dart';


class GradientBack extends StatelessWidget {
  String titulo = "Popular";
  double altura= 150;
  GradientBack(this.titulo, this.altura);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: altura,
      width: MediaQuery.of(context).size.width,
      //alignment: Alignment(-0.7, -1.0),
      //padding: EdgeInsets.all(8.0),
      decoration:  const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF754CC9),
                Color(0xFF383083)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.5, 0.8],
              tileMode: TileMode.clamp
          )
      ),
      padding: EdgeInsets.all(5.0),
      child: Text(
        titulo,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontFamily: "TiltNeon",
            fontWeight: FontWeight.bold
        ),
      ),

    );
  }

}