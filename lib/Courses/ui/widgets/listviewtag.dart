import 'package:amazinui/Courses/Model/tagsmodel.dart';
import 'package:amazinui/Courses/ui/widgets/tagscard.dart';
import 'package:flutter/material.dart';

class ListViewTag extends StatelessWidget {
  const ListViewTag({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return Container(

      height: 60.0,
      child: ListView(
      padding: EdgeInsets.all(5.0),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        //tag1
        TagsCard(
          tagsmodel: TagsModel(
              color: 0xFFFEBC5D, textvalue: "example", colorText: 0xFFFFFFFF),
        ),
        TagsCard(
          tagsmodel: TagsModel(
              color: 0xFFFFA297, textvalue: "example", colorText: 0xFFFFFFFF),
        ),
        TagsCard(
          tagsmodel: TagsModel(
              color: 0xFF96D8FA, textvalue: "example", colorText: 0xFFFFFFFF),
        ),
        TagsCard(
          tagsmodel: TagsModel(
              color: 0xFFFF6E5C, textvalue: "example", colorText: 0xFFFFFFFF),
        ),
        TagsCard(
          tagsmodel: TagsModel(
              color: 0xFFFF6E5C, textvalue: "example", colorText: 0xFFFFFFFF),
        ),
      ],
    ),
    );
  }
}
