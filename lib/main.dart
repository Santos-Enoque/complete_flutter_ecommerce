import 'package:chat_app/pages/home.dart';
import 'package:chat_app/pages/product_details.dart';
import 'package:flutter/material.dart';
import './pages/login.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.deepOrange
    ),
    home: HomePage(),
  ));
}
