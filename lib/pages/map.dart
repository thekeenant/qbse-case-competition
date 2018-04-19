import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qbse/pages/home.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() {
    return new _MapPageState();
  }
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Heatmap"),
      ),
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('assets/bigmap.png'),
            fit: BoxFit.fill
          ),
        ),
      ),
    );
  }
}
