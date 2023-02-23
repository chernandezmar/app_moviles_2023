import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Text('Esta es la AppBar aqui'),
        ),*/
        body: Column(
          children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top:100,
                ),
                child: Icon(Icons.ac_unit, color: Colors.red, size: 80,),
              ),
              Container(
                margin: EdgeInsets.only(
                  top:5,
                ),
                child: Icon(Icons.access_time_filled_sharp, color: Colors.blue),
              )
      ],
      ),
    )
    );
  }
}
