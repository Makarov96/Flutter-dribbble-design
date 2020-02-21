import 'package:amazinui/person/ui/widgets/downcards.dart';
import 'package:amazinui/person/ui/widgets/upcards.dart';
import 'package:flutter/material.dart';

class PersonInfo extends StatelessWidget {
  PersonInfo({Key key}) : super(key: key);

  @override
  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 168,
          width: width,
          decoration: BoxDecoration(
            color: Color(0xFF7A81DC),
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 30,
                  right: -100,
                  child: _circularContainer(300, Color(0xFF898FDF))),
              Positioned(
                  top: -100,
                  left: -45,
                  child: _circularContainer(width * .5, Color(0xFF7178D3))),
              Positioned(
                  top: -180,
                  right: -30,
                  child: _circularContainer(width * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                  top: 40,
                  left: 0,
                  child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.white,
                            size: 40,
                          ),
                        
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Search courses",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Type Something...",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )))
            ],
          )),
    );
  }

  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
          _header(context),
            Row(
            children: <Widget>[
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      margin: EdgeInsets.only(left: screenWidth * 0.05, top: screenHeight*0.02),
                      child: Text(
                        "Featured",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ))),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 29,
                    width: 70,
                    margin: EdgeInsets.only(left: screenWidth * 0.5, top: screenHeight*0.016),
                    child: Center(
                        child: Text(
                      "See All",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500,
                          color: Color(0xFFFF8E5C)
                          ),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color(0xFFFF8E5C).withOpacity(0.2)),
                  ))
            ],
          ),
          UpCards(),
          Row(
            children: <Widget>[
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      margin: EdgeInsets.only(left: screenWidth * 0.05),
                      child: Text(
                        "Business",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ))),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 29,
                    width: 70,
                    margin: EdgeInsets.only(left: screenWidth * 0.5),
                    child: Center(
                        child: Text(
                      "See All",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color(0xFF7A81DC).withOpacity(0.2)),
                  ))
            ],
          ),
          DownCards()
        ]));
  }
}
