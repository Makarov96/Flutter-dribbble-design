import 'package:flutter/material.dart';
class BackGrdouColor extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BackGrdouColor({Key key,@required this.screenHeight,@required this.screenWidth}) : super(key: key);


  @override
  Widget build(BuildContext context) {

 
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
       color: Color(0xFF7A81DC)
      ),
    );
  }
}