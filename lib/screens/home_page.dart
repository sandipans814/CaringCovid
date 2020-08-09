import 'package:flutter/material.dart';
import 'foundation.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(middle: Text("Home"),),
          child: Center(
            child: Text("Home Page"),
          ));
    } else {
      return Scaffold(
        body: Center(
          child: Text("Home Page"),
        ),
      );
    }
  }
}
