import 'package:flutter/material.dart';

class TaxesPage extends StatefulWidget {
  @override
  _TaxesPageState createState() => new _TaxesPageState();
}

class _TaxesPageState extends State<TaxesPage> {
  final GlobalKey<ScaffoldState> key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        key: key,
        appBar: new AppBar(
          title: new Text('Taxes'),
          actions: [
            new IconButton(
              icon: new Icon(Icons.file_download),
              onPressed: () {
                key.currentState.showSnackBar(
                  new SnackBar(
                    content: new Text("Downloading 2018 report..."),
                  ),
                );
              },
            ),
          ],
          bottom: new TabBar(
            tabs: [
              new Tab(text: "2018"),
              new Tab(text: "2017"),
              new Tab(text: "2016"),
            ],
          ),
        ),
        body: new TabBarView(
          children: [
            new ListView(
              children: [
                new Card(
                  child: new InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/taxmonth');
                    },
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
                                  new Text('Income',
                                      style: new TextStyle(fontWeight: FontWeight.bold)),
                                  new Text('Est Tax',
                                      style: new TextStyle(fontWeight: FontWeight.bold)),
                                  new Text('Hours',
                                      style: new TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              new TableRow(
                                children: [
                                  new Text('\$625'),
                                  new Text('\$125'),
                                  new Text('74'),
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
                                  new Text('Income',
                                      style: new TextStyle(fontWeight: FontWeight.bold)),
                                  new Text('Est Tax',
                                      style: new TextStyle(fontWeight: FontWeight.bold)),
                                  new Text('Hours',
                                      style: new TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              new TableRow(
                                children: [
                                  new Text('\$480'),
                                  new Text('\$90'),
                                  new Text('41'),
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
                  child: new InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/taxmonth');
                    },
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
                                  new Text('Income',
                                      style: new TextStyle(fontWeight: FontWeight.bold)),
                                  new Text('Est Tax',
                                      style: new TextStyle(fontWeight: FontWeight.bold)),
                                  new Text('Hours',
                                      style: new TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              new TableRow(
                                children: [
                                  new Text('\$950'),
                                  new Text('\$210'),
                                  new Text('90'),
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
                  color: Colors.green,
                  elevation: 0.0,
                  child: new InkWell(
                    child: new Column(
                      children: [
                        new ListTile(
                          title: new Text(
                            'Cumulative 2018',
                            style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        new Padding(
                          padding: new EdgeInsets.all(15.0),
                          child: new Table(
                            children: [
                              new TableRow(
                                children: [
                                  new Text(
                                    'Total Income',
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  new Text(
                                    'Total Est Tax',
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  new Text(
                                    'Total Hours',
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ],
                              ),
                              new TableRow(
                                children: [
                                  new Text(
                                    '\$2,055',
                                    style: new TextStyle(color: Colors.white),
                                  ),
                                  new Text(
                                    '\$210',
                                    style: new TextStyle(color: Colors.white),
                                  ),
                                  new Text(
                                    '205',
                                    style: new TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            new Center(
              child: new Text("Incomplete"),
            ),
            new Center(
              child: new Text("Incomplete"),
            ),
          ],
        ),
      ),
    );
  }
}
