import 'package:amazinui/Courses/Model/cardinformation.dart';
import 'package:flutter/material.dart';

class StructureCard extends StatelessWidget {

  CardInformation cardInformation;
  StructureCard({Key key, @required this.cardInformation}) : super(key: key);

// imagen de la izquierda
  imageleft(screeheight, screenwidht,cardInformation) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: Container(
        height: screeheight * 0.19,
        width: screenwidht * 0.25,
        decoration: BoxDecoration(
            color: Color(cardInformation.backgrouncolor),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      ),
    );
  }

  Widget infomationcard(cardInformation){

    return Flexible(
      child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(this.cardInformation.title,
                  style: TextStyle(
                      color: Color(this.cardInformation.textColortitle),
                      fontWeight: FontWeight.w500,
                      fontSize: 20)),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  this.cardInformation.universityName
                  ,
                  style: TextStyle(fontSize: 11),
                )),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: Text(this.cardInformation.textInformation),
            ),
            Row(children: this.cardInformation.tagsModel ),
          ])));
  }

  Widget card(context, cardeInformation) {
    double screeheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      height: screeheight * 0.23,
      width: screenwidth,
      child: Row(children: <Widget>[
        this.imageleft(screeheight, screenwidth,cardeInformation),
        //Column information
        infomationcard(cardInformation)
      ]),
      decoration: BoxDecoration(color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {

    return card(context, this.cardInformation);
  }
}
