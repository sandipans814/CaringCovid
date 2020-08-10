import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'foundation.dart';
import 'profile_page.dart';
import 'add_symptoms_page.dart';
import 'home_page.dart';
import 'package:caringhopesapp/components/fab_bottom_app_bar.dart';


class LandingScreen extends StatefulWidget {

  LandingScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff7165E2),
          title: Text(widget.title),
        ),
        // Body Where the content will be shown of each page index
        body: tabs[currentTabIndex],
        bottomNavigationBar: FABBottomAppBar(
          color: Colors.grey,
          selectedColor: Colors.black,
          notchedShape: CircularNotchedRectangle(),
          onTabSelected: onTapped,
          items: [
            FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
            FABBottomAppBarItem(iconData: Icons.person, text: 'Profile'),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),backgroundColor:Color(0xff7165E2),onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SymptomsPage()),
          );
        },)
      );
  }
}
