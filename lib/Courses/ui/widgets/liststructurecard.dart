import 'package:amazinui/Courses/Model/cardinformation.dart';
import 'package:amazinui/Courses/Model/tagsmodel.dart';
import 'package:amazinui/Courses/ui/widgets/structurecard.dart';
import 'package:amazinui/Courses/ui/widgets/tagscard.dart';
import 'package:flutter/material.dart';

class ListStructureCard extends StatelessWidget {
   ListStructureCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

        StructureCard(
          cardInformation: CardInformation(
            backgrouncolor: 0xFFB9E5FC,
              title: "Science",
              textColortitle: 0xFF787FDC,
              universityName: "Johns Hopkins University",
              textInformation:
                  "Lorem ipsum dolor sit amet consectetur adipiscing elit, interdum imperdiet sagittis tempor vehicula id ut, eleifend habitasse sem aenean sapien viverra.",
              tagsModel: [
                TagsCard(
                  tagsmodel: TagsModel(
                      color: 0xFFFF7866,
                      textvalue: "Machine \n Learning",
                      colorText: 0xFFFFFFFF),
                ),
                TagsCard(
                  tagsmodel: TagsModel(
                      color: 0xFF96D8FA,
                      textvalue: "UX",
                      colorText: 0xFFFFFFFF),
                )
              ]),
        ),
        Divider(
          color: Colors.grey,
        ),

//card two
           StructureCard(
          cardInformation: CardInformation(
            backgrouncolor: 0xFFFF6E5C,
              title: "Science",
              textColortitle: 0xFF787FDC,
              universityName: "Johns Hopkins University",
              textInformation:
                  "Lorem ipsum dolor sit amet consectetur adipiscing elit, interdum imperdiet sagittis tempor vehicula id ut, eleifend habitasse sem aenean sapien viverra.",
              tagsModel: [
                TagsCard(
                  tagsmodel: TagsModel(
                      color: 0xFFFF7866,
                      textvalue: "Machine \n Learning",
                      colorText: 0xFFFFFFFF),
                ),
                TagsCard(
                  tagsmodel: TagsModel(
                      color: 0xFF96D8FA,
                      textvalue: "UX",
                      colorText: 0xFFFFFFFF),
                )
              ]),
        ),
        Divider(
          color: Colors.grey,
        ),

        //Card three
           StructureCard(
          cardInformation: CardInformation(
               backgrouncolor: 0xFFFFBAB9,
              title: "Science",
              textColortitle: 0xFF787FDC,
              universityName: "Johns Hopkins University",
              textInformation:
                  "Lorem ipsum dolor sit amet consectetur adipiscing elit, interdum imperdiet sagittis tempor vehicula id ut, eleifend habitasse sem aenean sapien viverra.",
              tagsModel: [
                TagsCard(
                  tagsmodel: TagsModel(
                      color: 0xFFFF7866,
                      textvalue: "Machine \n Learning",
                      colorText: 0xFFFFFFFF),
                ),
                TagsCard(
                  tagsmodel: TagsModel(
                      color: 0xFF7A80DB,
                      textvalue: "UX",
                      colorText: 0xFFFFFFFF),
                )
              ]),
        ),
        Divider(
          color: Colors.grey,
        )




      ],
    );
  }
}
