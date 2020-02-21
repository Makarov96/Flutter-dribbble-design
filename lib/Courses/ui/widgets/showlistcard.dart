import 'package:amazinui/Courses/ui/widgets/liststructurecard.dart';
import 'package:flutter/material.dart';


class ShowListCArd extends StatelessWidget {
  const ShowListCArd({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.65,
      child: ListStructureCard()
    );
  }
}