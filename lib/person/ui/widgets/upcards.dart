import 'package:amazinui/person/ui/widgets/cardlistwo.dart';
import 'package:flutter/material.dart';

class UpCards extends StatelessWidget {
  UpCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height *  0.33, child: CardListTwo());
  }
}
