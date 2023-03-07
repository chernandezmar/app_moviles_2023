import 'package:flutter/material.dart';

class reviews_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final foto = Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.only(
        top:20,
        left:20,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("assets/img/people.jpg"),
          //whatever image you can put here
          fit: BoxFit.cover,
        ),
      ),
    );

    final userName = Container(
      child: Text(
        "Varuna Yasas",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "TiltNeon",
          fontSize: 17,
        )
      )
    );

    return Row(
      children: [
        foto,
        userName,
      ],
    );

  }

}
