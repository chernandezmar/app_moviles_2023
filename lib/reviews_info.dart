import 'package:flutter/material.dart';

class reviews_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final fotito = Container(
      height: 150,
      width: 150,
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 50,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
          //whatever image you can put here
          fit: BoxFit.cover,
        ),
      ),
    );
    final flor = Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Nelumno_nucifera_open_flower_-_botanic_garden_adelaide.jpg/250px-Nelumno_nucifera_open_flower_-_botanic_garden_adelaide.jpg"),
          //whatever image you can put here
          fit: BoxFit.cover,
        ),
      ),
    );
    final flor2 = Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Lotus%2C_a_typical_Hindu_temple_motive%2C_in_red_sandstone%2C_Qutb_complex.jpg/240px-Lotus%2C_a_typical_Hindu_temple_motive%2C_in_red_sandstone%2C_Qutb_complex.jpg"),
          //whatever image you can put here
          fit: BoxFit.cover,
        ),
      ),
    );
    return Column(
      children: [
        fotito,
        flor2,
        flor
      ],
    );

  }

}
