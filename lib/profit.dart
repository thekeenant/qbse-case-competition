import 'package:flutter/material.dart';
import 'package:qbse/drawer.dart';

class ProfitPage extends StatefulWidget {
  @override
  _ProfitPageState createState() => new _ProfitPageState();
}

class _ProfitPageState extends State<ProfitPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Profit'),
      ),
      drawer: new AppDrawer(),
      body: new Text('THE CHART GOES HERE'),
    );
  }
}
