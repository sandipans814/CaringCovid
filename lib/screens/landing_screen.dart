import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'foundation.dart';
import 'profile_page.dart';
import 'add_symptoms_page.dart';
import 'home_page.dart';



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
    SymptomsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), title: Text("Search")),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), title: Text("User Info"))
          ]),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return HomePage();
                break;
              case 1:
                return SymptomsPage();
                break;
              case 2:
                return ProfilePage();
                break;
              default:
                return HomePage();
                break;
            }
          });
    }
    //Android Scafold
    else {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        // Body Where the content will be shown of each page index
        body: tabs[currentTabIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: onTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add), title: Text("Add")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("User Info"))
            ]),
      );
    }
  }
}
