import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qbse/charts.dart';
import 'dart:math' as math;

class InsightsPage extends StatefulWidget {
  @override
  _InsightsPageState createState() => new _InsightsPageState();
}

class _InsightsPageState extends State<InsightsPage> {
  int dropdown1 = 0;
  int dropdown2 = 0;
  int dropdown3 = 0;
  var random = 0.0;
  var randy = new Random();

  @override
  Widget build(BuildContext context) {
    var str = 'TBD';
    var style = new TextStyle();

    if (dropdown1 > 0 && dropdown2 > 0 && dropdown3 > 0) {
      random = randy.nextDouble() * 500 - 100.0;
      str = new NumberFormat.currency(symbol: '\$').format(random) + ' / year';

      style = new TextStyle(
        color: random < 0 ? Colors.red : Colors.green,
        fontSize: 24.0,
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Insights'),
      ),
      body: new ListView(
        children: [
          new Card(
            child: new Column(
              children: [
                new ListTile(
                  title: new Text(
                    'Reflection',
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                  isThreeLine: true,
                  subtitle: new Row(
                    children: [
                      new Padding(
                        padding: new EdgeInsets.only(right: 10.0),
                        child: new DropdownButton(
                          items: [
                            new DropdownMenuItem(
                              child: new Text('Year'),
                            ),
                            new DropdownMenuItem(
                              child: new Text('Month'),
                            ),
                            new DropdownMenuItem(
                              child: new Text('Day'),
                            ),
                          ],
                          onChanged: (index) {},
                        ),
                      ),
                      new Text('in review by'),
                      new Padding(
                        padding: new EdgeInsets.only(left: 10.0),
                        child: new DropdownButton(
                          items: [
                            new DropdownMenuItem(
                              child: new Text('Estimated Profit'),
                            ),
                            new DropdownMenuItem(
                              child: new Text('Miles Driven'),
                            ),
                            new DropdownMenuItem(
                              child: new Text('Expenses'),
                            )
                          ],
                          onChanged: (index) {},
                        ),
                      ),
                    ],
                  ),
                ),
                new AspectRatio(
                  aspectRatio: 2 / 1,
                  child: new ReflectionChart(),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.all(10.0),
                      child: new FlatButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: new Text("Set Acceptable Rate"),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (ctx) {
                              return new SimpleDialog(
                                title: new Text("Set Acceptable Rate"),
                                children: <Widget>[
                                  new Padding(
                                    child: new TextField(
                                      decoration: new InputDecoration(
                                        hintText: '\$100',
                                      ),
                                    ),
                                    padding: new EdgeInsets.all(20.0),
                                  ),
                                  new Center(
                                    child: new FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: new Text("Save"),
                                      color: Colors.blue,
                                      textColor: Colors.white,
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              children: [
                new ListTile(
                  title: new Text(
                    'Top Days',
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: new Text('Day of Week vs. \$/Hr'),
                ),
                new AspectRatio(
                  aspectRatio: 2 / 1,
                  child: new DayChart.withSampleData(),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              children: [
                new ListTile(
                  title: new Text(
                    'Top Times of Day',
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: new Text('Hour of Day vs. \$/Hr'),
                ),
                new Center(
                  child: new Image.asset(
                    'assets/legend.png',
                    width: 280.0,
                  ),
                ),
                new AspectRatio(
                  aspectRatio: 2 / 1,
                  child: new HourlyAverageChart.withSampleData(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
