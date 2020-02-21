import 'package:amazinui/navbaruser.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main() {
  
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light
      ));
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: NavBarUser()
      );
  }
}
