import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({Key key}) : super(key: key);
  double multiplicatevalue =0.19;
   double oldheight = 0.19;
  double newheight = 0.29;
 
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: MediaQuery.of(context).size.height* widget.multiplicatevalue,
        width: MediaQuery.of(context).size.width,

        child:InkWell(

          onTap: (){
           setState(() {

             if(widget.multiplicatevalue == widget.oldheight){
               widget.multiplicatevalue = widget.newheight;
             }else{
               widget.multiplicatevalue = widget.oldheight;
             }

           });


          },
        ),
        decoration: BoxDecoration(
          color:Color(0xFFFF6E5C),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50)
          )

        ),

      );
  }
}