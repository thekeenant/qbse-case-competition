import 'package:flutter/material.dart';
import 'package:qbse/drawer.dart';

class TaxMonthPage extends StatefulWidget {
  @override
  _TaxMonthPage createState() => new _TaxMonthPage();
}

class _TaxMonthPage extends State<TaxMonthPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('March 2018 Taxes'),
      ),
      body: new Container(
        child: new Padding(
          padding: new EdgeInsets.all(15.0),
          child: new Table(
            children: [
              new TableRow(
                children: [
                  new Text('Date', style: new TextStyle(fontWeight: FontWeight.bold)),
                  new Text('Income', style: new TextStyle(fontWeight: FontWeight.bold)),
                  new Text('Expenses', style: new TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              new TableRow(
                children: [
                  new Text('3/1'),
                  new Text('\$'),
                  new Text('\$'),
                ],
              ),
              new TableRow(
                children: [
                  new Text('3/2'),
                  new Text('\$'),
                  new Text('\$'),
                ],
              ),
              new TableRow(
                children: [
                  new Text('3/3'),
                  new Text('\$'),
                  new Text('\$'),
                ],
              ),
              new TableRow(
                children: [
                  new Text('..'),
                  new Text('..'),
                  new Text('..'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
