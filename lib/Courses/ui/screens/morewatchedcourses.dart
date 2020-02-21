import 'package:amazinui/Courses/ui/widgets/header.dart';
import 'package:amazinui/Courses/ui/widgets/listviewtag.dart';
import 'package:amazinui/Courses/ui/widgets/showlistcard.dart';
import 'package:flutter/material.dart';

class MoreWachedCourses extends StatelessWidget {
  const MoreWachedCourses({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget tagsListWidget = ListViewTag();
  

    return Scaffold(
        body: Column(children: <Widget>[
      Header(),
      tagsListWidget,
      ShowListCArd()
    ]));
  }
}
