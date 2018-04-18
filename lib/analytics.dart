import 'package:flutter/material.dart';
import 'package:qbse/drawer.dart';

class AnalyticsPage extends StatefulWidget {
  @override
  _AnalyticsPageState createState() => new _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Analytics'),
      ),
      drawer: new AppDrawer(),
      body: new Text('Analytics page'),
    );
  }
}
