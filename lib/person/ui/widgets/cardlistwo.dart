import 'package:amazinui/person/model/person.dart';
import 'package:amazinui/person/ui/widgets/cardperson.dart';
import 'package:amazinui/person/ui/widgets/upcards.dart';
import 'package:flutter/material.dart';

class CardListTwo extends StatelessWidget {
   CardListTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      
      padding: EdgeInsets.all(15.0),
      children: <Widget>[

        CardPerson(
          viewCircleBlue: false,
          viewunderbluecircle: false,
          viewunderbluecircleTwo: true,
          textColor: true,
          colortag: 0xFFFFFFFF,
          textcolortag: 0xFFFFFFFF,
          colorCicleBackHead: 0xFFFFBD5C,
            person: Person(
                courser: "8 courses",
                characteristic: "Find The Right  \n Degree for You"),
            color: Color(0xFFFF6E5C), urlImage: "https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg",),
        CardPerson(
          viewCircleBlue: false,
          viewunderbluecircle: false,
          viewunderbluecircleTwo: false,
          textColor: false,
          colortag: 0xFF5DAAE8,
          textcolortag:0xFF5DAAE8 ,
          colorCicleBackHead: 0xFF5DAAE8,
            person: Person(
                courser: "7 courses",
                characteristic: "Become a Data Scientist"),
            color: Color(0xFFB0DBFF),urlImage: "https://s3.amazonaws.com/uifaces/faces/twitter/olegpogodaev/128.jpg"),
        CardPerson(
          viewCircleBlue: false,
          viewunderbluecircle: false,
          viewunderbluecircleTwo: false,
          textColor: false,
          colortag: 0xFF794AFF,
          textcolortag:0xFF794AFF,
          colorCicleBackHead: 0xFF794AFF,
            person: Person(
                courser: "9 courses",
                characteristic: "Become a Digital Marker"),
            color: Color(0xFFC0AAFF),urlImage: "https://s3.amazonaws.com/uifaces/faces/twitter/stephenmoon/128.jpg"),
        CardPerson(
          viewCircleBlue: false,
          viewunderbluecircle: false,
          viewunderbluecircleTwo: false,
          textColor: false,
          colortag: 0xFFFF7025,
          textcolortag:0xFFFF7025 ,
          colorCicleBackHead: 0xFFFF7025,
            person: Person(
              
                courser: "9 courses",
                characteristic: "English for Coreer Development"),
            color: Color(0xFF95E898),urlImage: "https://s3.amazonaws.com/uifaces/faces/twitter/bigmancho/128.jpg"),
      ],
    );
  }
}