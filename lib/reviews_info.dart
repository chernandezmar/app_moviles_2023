import 'package:flutter/material.dart';

class reviews_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
          //whatever image you can put here
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}
