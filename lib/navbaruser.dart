import 'package:amazinui/Courses/ui/screens/morewatchedcourses.dart';
import 'package:amazinui/person/ui/screens/PersonInfo.dart';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavBarUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NavBarUser();
  }
}

class _NavBarUser extends State<NavBarUser> {
  int indexTap = 0;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0, keepPage: true);

    void onTapTapped(int index) {
      setState(() {
        indexTap = index;
        controller.animateToPage(index,
            duration: Duration(milliseconds: 200), curve: Curves.ease);
      });
    }

    void pageChanged(int index) {
      setState(() {
        indexTap = index;
      });
    }

    final pageView = PageView(
      controller: controller,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[PersonInfo(), MoreWachedCourses()],
    );

    return Scaffold(
      body: pageView,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white, primaryColor: Color(0xFF7980DB)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            onTapTapped(index);
          },
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(icon: Icon(MdiIcons.homeOutline), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.star_border), title: Text("")),
            BottomNavigationBarItem(icon: Icon(MdiIcons.bookOpenOutline), title: Text("")),
            BottomNavigationBarItem(icon: Icon(MdiIcons.accountOutline), title: Text("")),
         
          ],
        ),
      ),
    );
  }
}
