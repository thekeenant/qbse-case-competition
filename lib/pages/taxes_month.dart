import 'package:flutter/material.dart';
import 'package:qbse/drawer.dart';

class TaxMonthPage extends StatefulWidget {
  @override
  _TaxMonthPage createState() => new _TaxMonthPage();
}

class _TaxMonthPage extends State<TaxMonthPage> {
  final GlobalKey<ScaffoldState> key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: key,
      appBar: new AppBar(
        title: new Text('March 2018 Taxes'),
        actions: [
          new IconButton(
            icon: new Icon(Icons.file_download),
            onPressed: () {
              key.currentState.showSnackBar(new SnackBar(content: new Text("Downloading monthly report...")));
            },
          ),
        ],
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
                  new Text('Est Tax', style: new TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              new TableRow(
                children: [
                  new Text('3/1'),
                  new Text('\$125.00'),
                  new Text('\$0.00'),
                  new Text('\$31.25'),
                ],
              ),
              new TableRow(
                children: [
                  new Text('3/2'),
                  new Text('\$80.00'),
                  new Text('\$42.50'),
                  new Text('\$9.50'),
                ],
              ),
              new TableRow(
                children: [
                  new Text('3/3'),
                  new Text('\$110.50'),
                  new Text('\$58.21'),
                  new Text('\$13.00'),
                ],
              ),
              new TableRow(
                children: [
                  new Text('.'),
                  new Text('..'),
                  new Text('...'),
                  new Text('....'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
