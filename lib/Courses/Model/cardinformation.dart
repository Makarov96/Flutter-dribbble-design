import 'package:flutter/material.dart';

class CardInformation {
  final backgrouncolor;
  final String title;
  final textColortitle;
  final String universityName;
  final String textInformation;
  final List<Widget> tagsModel;

  CardInformation(
      {Key key,
      @required this.backgrouncolor,
      @required this.title,
      @required this.textColortitle,
      @required this.universityName,
      @required this.textInformation,
      @required this.tagsModel});
}
