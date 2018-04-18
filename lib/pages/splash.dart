import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qbse/pages/home.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() {
    return new _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {
  var _cancelAutoTransition = false;

  @override
  void initState() {
    super.initState();
    new Future.delayed(const Duration(milliseconds: 2500), () {
      if (_cancelAutoTransition)
        return;

      Navigator.push(context, new PageRouteBuilder(
        opaque: false,
        transitionDuration: new Duration(milliseconds: 500),
        pageBuilder: (BuildContext context, _, __) {
          return new HomePage();
        },
        transitionsBuilder: (___, Animation<double> animation, ____, Widget child) {
          return new FadeTransition(
            opacity: animation,
            child: child,
          );
        }
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GestureDetector(
        onTap: () {
          _cancelAutoTransition = true;
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
