import 'package:amazinui/person/model/person.dart';
import 'package:flutter/material.dart';

class CardPerson extends StatelessWidget {
  Person person;
  Color color;
  String urlImage;
  bool viewCircleBlue;
  bool viewunderbluecircle;
  bool viewunderbluecircleTwo;
  bool textColor;
  var colortag;
  var textcolortag;
  var colorCicleBackHead;

  CardPerson(
      {Key key,
      @required this.person,
      @required this.color,
      @required this.urlImage,
      this.viewCircleBlue,
      this.viewunderbluecircle,
      this.viewunderbluecircleTwo,
      this.textColor,
      this.colortag,
      this.textcolortag,
      this.colorCicleBackHead
      });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final circlelighblue = Container(
      height: 220,
      width: 220,
      decoration: BoxDecoration(
        color: viewCircleBlue ? Color(0xFFB9E5FC) : Colors.transparent,
        shape: BoxShape.circle,
      ),
    );

    final circletransparend = Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white, style: BorderStyle.solid, width: 3.0),
          shape: BoxShape.circle,
          color: Colors.transparent),
    );

    final circularImage = Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              //foto desde asset  image: AssetImage(user.photoURL)
              image: NetworkImage(urlImage))),
    );

    final orangecircle = Container(
      height: 40,
      width: 40,
      decoration:
          BoxDecoration( color:   Color(colorCicleBackHead), shape: BoxShape.circle),
    );

    final underbluecircle = Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          border: Border.all(
              color: viewunderbluecircleTwo? Color(0xFF64C4CF): Colors.transparent, width: 40, style: BorderStyle.solid),
          shape: BoxShape.circle,
          color: Colors.transparent),
    );

    final orangeUnderCircle = Container(
      height: 150,
      width: 150,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: viewunderbluecircleTwo ? Color(0xFFFF8E5C) : Colors.transparent),
    );

    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: 160.0,
      margin: EdgeInsets.all(5),
      child: Stack(
        children: <Widget>[
          Positioned(
            right: 25,
            child: circlelighblue,
          ),
          Positioned(right: -55, child: circletransparend),

          viewunderbluecircle
              ? Positioned(bottom: -100, left: -70, child: underbluecircle)
              : Positioned(bottom: -50, left: 5, child: orangeUnderCircle),

          Positioned(top: 14, left: 55, child: orangecircle),
          Positioned(left: 15, top: 20, child: circularImage),
          Container(
              margin: EdgeInsets.only(
                  top: screenHeight * 0.17, left: screenWidth * 0.05),
              child: Text(
                person.characteristic,
                style: TextStyle(
                    color: textColor  ?  Colors.white : Colors.black,
                    fontSize: 13,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: 18,
              bottom: 10,
              child: Container(
                padding: EdgeInsets.all(5),
                width: 90,
                height: 30,
                child: Center(child:Text(
                  person.courser,
                  style: TextStyle(color: Color(textcolortag)),
                )),
                decoration: BoxDecoration(
                    color: Color(colortag).withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(13))),
              ))
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(2, 4), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
