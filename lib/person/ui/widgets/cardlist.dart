import 'package:amazinui/person/model/person.dart';
import 'package:amazinui/person/ui/widgets/cardperson.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  CardList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
       padding: EdgeInsets.all(15.0),
      children: <Widget>[

        CardPerson(
          viewCircleBlue: true,
          viewunderbluecircle: true,
          viewunderbluecircleTwo: true,
          textColor: true,
          colortag: 0xFFFFFFFF,
          textcolortag: 0xFFFFFFFF,
          colorCicleBackHead: 0xFFFFBD5C,
            person: Person(
                courser: "9 courses",
                characteristic: "English for Coreer Development"),
            color: Color(0xFF74D4DD), urlImage: "https://s3.amazonaws.com/uifaces/faces/twitter/mrmoiree/128.jpg",),
        CardPerson(
          viewCircleBlue: false,
          viewunderbluecircle: true,
          viewunderbluecircleTwo: false,
          textColor: false,
          colortag: 0xFFBB5DE8,
          textcolortag: 0xFFBB5DE8,
          colorCicleBackHead: 0xFFBB5DE8,
            person: Person(
                courser: "9 courses",
                characteristic: "Bussines \n Foundation"),
            color: Color(0xFF95E8DA),urlImage: "https://s3.amazonaws.com/uifaces/faces/twitter/araa3185/128.jpg"),
        CardPerson(
          viewCircleBlue: false,
          viewunderbluecircle: true,
          viewunderbluecircleTwo: false,
          textColor: false,
          colortag: 0xFFEB1818,
          textcolortag:0xFFEB1818 ,
          colorCicleBackHead:0xFFEB1818 ,
            person: Person(
                courser: "9 courses",
                characteristic: "Excel Skill for \n Business"),
            color: Color(0xFFBD95E8),urlImage: "https://s3.amazonaws.com/uifaces/faces/twitter/vivekprvr/128.jpg"),
        CardPerson(
          viewCircleBlue: false,
          viewunderbluecircle: true,
          viewunderbluecircleTwo: false,
          textColor: false,
          colortag: 0xFF2BFF97,
          textcolortag: 0xFF2BFF97,
          colorCicleBackHead:0xFF2BFF97 ,
            person: Person(
                courser: "9 courses",
                characteristic: "English for Coreer Development"),
            color: Color(0xFFB0DBFF),urlImage: "https://s3.amazonaws.com/uifaces/faces/twitter/russoedu/128.jpg"),
      ],
    );
  }
}
