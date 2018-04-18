import 'package:flutter/material.dart';
import 'package:qbse/drawer.dart';

class TaxesPage extends StatefulWidget {
  @override
  _TaxesPageState createState() => new _TaxesPageState();
}

class _TaxesPageState extends State<TaxesPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Taxes'),
      ),
      drawer: new AppDrawer(),
      body: new Text('Taxes page'),
    );
  }
}
