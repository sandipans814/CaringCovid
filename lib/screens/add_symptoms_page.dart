import 'package:flutter/material.dart';
import 'foundation.dart';
import 'package:flutter/cupertino.dart';

class SymptomsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(middle: Text("Search"),),
          child: Center(
            child: Text("Symptoms Page"),
          ));
    } else {
      return Scaffold(
        body: Center(
          child: Text("Symptoms Page"),
        ),
      );
    }
  }
}
