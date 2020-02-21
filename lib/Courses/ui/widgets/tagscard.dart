import 'package:amazinui/Courses/Model/tagsmodel.dart';
import 'package:flutter/material.dart';

class TagsCard extends StatelessWidget {


  TagsModel tagsmodel;

  TagsCard({Key key, this.tagsmodel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(screenwidth*0.02),
      child: Center(
          child: Text(tagsmodel.textvalue,
              style:
                  TextStyle(color: Color(tagsmodel.colorText), fontWeight: FontWeight.bold))),
      height: screenheight * 0.04,
      width: screenwidth * 0.24,
      decoration: BoxDecoration(
          color: Color(tagsmodel.color),
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
    );
  }
}
