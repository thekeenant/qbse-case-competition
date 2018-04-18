import 'package:flutter/material.dart';
import 'package:qbse/charts.dart';

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
        body: new ListView(
          children: [
            new ListTile(
              title: new Text('Reflection', style: new TextStyle(fontWeight: FontWeight.bold)),
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
            new ListTile(
              title: new Text(
                'Top Times of Day',
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: new Text('Hour of Day vs. \$/Hr'),
            ),
            new AspectRatio(
              aspectRatio: 2 / 1,
              child: new HourlyAverageChart.withSampleData(),
            ),
            new ListTile(
              title: new Text(
                'Heatmap',
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: new Text('Best places for rides'),
            ),
            new Image.asset('assets/madison.png'),
            new ListTile(
              title: new Text(
                'Car Model Comparison',
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: new Text('Not done..'),
            ),
          ],
        ));
  }
}
