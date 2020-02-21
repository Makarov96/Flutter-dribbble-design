import 'package:amazinui/person/ui/widgets/cardlist.dart';
import 'package:flutter/material.dart';

class DownCards extends StatelessWidget {
  DownCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      child:CardList()
      );
  }
}
