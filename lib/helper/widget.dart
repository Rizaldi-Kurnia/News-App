import 'package:flutter/material.dart';

Widget myAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Im',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600)),
        Text('News',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600))
      ],
    ),
  );
}
