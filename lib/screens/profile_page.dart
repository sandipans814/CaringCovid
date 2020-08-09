import 'package:flutter/material.dart';
import 'foundation.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(middle: Text("User Info"),),
          child: Center(
            child: Text("User Page"),
          ));
    } else {
      return Scaffold(
        body: Center(
          child: Text("User Page"),
        ),
      );
    }
  }
}
