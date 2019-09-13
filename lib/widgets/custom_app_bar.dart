import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return             Stack(
      children: <Widget>[
        Positioned(
          top: 10,
          right: 20,
          child: Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.menu)),
        ),

        Positioned(
          top: 10,

          right: 60,
          child: Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.shopping_cart)),
        ),

        Positioned(
          top: 10,

          right: 100,
          child: Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.person)),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('What are\nyou Shopping for?', style: TextStyle(fontSize: 30, color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.w400),),
        ),
      ],
    )
    ;
  }
}
