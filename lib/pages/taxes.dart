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
      body: new ListView(
        children: [
          new Card(
            child: new Column(
              children: [
                new ListTile(
                  title: new Text('April 2018 MTD'),
                ),
                new Padding(
                  padding: new EdgeInsets.all(15.0),
                  child: new Table(
                    children: [
                      new TableRow(
                        children: [
                          new Text('Income', style: new TextStyle(fontWeight: FontWeight.bold)),
                          new Text('Est Tax', style: new TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      new TableRow(
                        children: [
                          new Text('\$\$\$'),
                          new Text('\$'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Card(
            child: new InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/taxmonth');
              },
              child: new Column(
                children: [
                  new ListTile(
                    title: new Text('March 2018'),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(15.0),
                    child: new Table(
                      children: [
                        new TableRow(
                          children: [
                            new Text('Income', style: new TextStyle(fontWeight: FontWeight.bold)),
                            new Text('Est Tax', style: new TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        new TableRow(
                          children: [
                            new Text('\$\$\$'),
                            new Text('\$'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Card(
            child: new Column(
              children: [
                new ListTile(
                  title: new Text('February 2018'),
                ),
                new Padding(
                  padding: new EdgeInsets.all(15.0),
                  child: new Table(
                    children: [
                      new TableRow(
                        children: [
                          new Text('Income', style: new TextStyle(fontWeight: FontWeight.bold)),
                          new Text('Est Tax', style: new TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      new TableRow(
                        children: [
                          new Text('\$\$\$'),
                          new Text('\$'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
