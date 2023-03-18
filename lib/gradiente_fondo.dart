import 'package:flutter/material.dart';


class GradientBack extends StatelessWidget {
/*  String title = "Popular";
  GradientBack(this.title);*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF711FD3),
                Color(0xFF923BE3)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          )
      ),


      alignment: Alignment(-0.9, -0.6),

    );
  }

}