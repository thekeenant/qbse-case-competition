import 'package:flutter/material.dart';
import 'package:qbse/charts.dart';
import 'package:qbse/drawer.dart';

final list = [
  new ListTile(
    title: new Text('Rideshare driving (Auto)'),
    subtitle: new Text('3.31'),
    trailing: new Text("-\$3.22"),
    onTap: () {},
  ),
  new ListTile(
    title: new Text('Rideshare driving (Auto)'),
    subtitle: new Text('3.43'),
    trailing: new Text("-\$3.31"),
    onTap: () {},
  ),
  new ListTile(
    title: new Text('Ridehsare driving (Manual)'),
    subtitle: new Text('2.97 mi'),
    trailing: new Text("-\$2.42"),
    onTap: () {},
  ),
];

class MileagePage extends StatefulWidget {
  MileagePage({Key key}) : super(key: key);

  @override
  _MileagePageState createState() => new _MileagePageState();
}

class _MileagePageState extends State<MileagePage> {
  var value = true;

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Mileage'),
          bottom: new TabBar(
            tabs: [
              new Tab(
                text: 'New',
              ),
              new Tab(
                text: 'Reviewed',
              )
            ],
          ),
        ),
        body: new TabBarView(
          children: [
            new Column(
              children: <Widget>[
                new Container(
                  child: new ListTile(
                    title: new Text('Automatic Mileage Tracking'),
                    trailing: new Switch(value: value, onChanged: (val) {
                      setState(() => value = val);
                    }),
                  ),
                  decoration: new BoxDecoration(
                    color: Colors.grey[200],
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(top: 100.0),
                  child: new Column(
                    children: <Widget>[
                      new Icon(
                        Icons.drive_eta,
                        color: Colors.green,
                        size: 80.0,
                      ),
                      new Padding(
                        padding: new EdgeInsets.only(top: 20.0),
                        child: new Text(
                          'Take a drive!',
                          style: new TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                      new Padding(
                        padding: new EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
                        child: new Text(
                          "We're ready to track your trips. All you have to do is drive.",
                          style: new TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new ListView(children: list),
          ],
        ),
      ),
    );
  }
}
