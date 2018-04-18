import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() {
    return new _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didUpdateWidget(SplashPage oldWidget) {
    new Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/home');
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/home');
        },
        child: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Image.asset(
                  'assets/qbse_logo.png',
                  width: 200.0,
                ),
                new Padding(
                  padding: new EdgeInsets.all(20.0),
                  child: new CupertinoActivityIndicator(),
                ),
              ],
            ),
          ),
          decoration: new BoxDecoration(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
