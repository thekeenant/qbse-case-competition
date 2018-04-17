import 'package:flutter/material.dart';
import 'package:qbse/charts.dart';
import 'package:qbse/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  Widget renderContent() {
    if (_index == 0) {
      return new ListView(
        children: [
          new Card(
            child: new Column(
              children: [
                new ListTile(
                  title: new Text(
                    '+\$23.00',
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: new Text('Profit Today'),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              children: [
                new ListTile(
                  title: new Text('\$8.50/hr', style: new TextStyle(color: Colors.green)),
                  subtitle: new Text('Average Profit Today'),
                ),
              ],
            ),
          ),
        ],
      );
    } else if (_index == 1) {
      return new ListView(
        children: [
          new ListTile(
            title: new Text('Top Days', style: new TextStyle(fontWeight: FontWeight.bold)),
            subtitle: new Text('Day of Week vs. \$/Hr'),
          ),
          new AspectRatio(
            aspectRatio: 2 / 1,
            child: DayChart.withSampleData(),
          ),
          new ListTile(
            title: new Text('Top Times of Day', style: new TextStyle(fontWeight: FontWeight.bold)),
            subtitle: new Text('Hour of Day vs. \$/Hr'),
          ),
          new AspectRatio(
            aspectRatio: 2 / 1,
            child: DashPatternLineChart.withSampleData(),
          ),
          new ListTile(
            title: new Text('Best Pickup Areas', style: new TextStyle(fontWeight: FontWeight.bold)),
            subtitle: new Text('Heatmap of hotspots'),
          ),
          new Image.asset('assets/madison.png'),
        ],
      );
    } else {
      return new Text("Taxes");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: renderContent(),
      bottomNavigationBar: new BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            _index = idx;
          });
        },
        currentIndex: _index,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.attach_money),
            title: new Text('Dashboard'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.show_chart),
            title: new Text('Analytics'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.insert_drive_file),
            title: new Text('Taxes'),
          ),
        ],
      ),
      drawer: new AppDrawer(),
    );
  }
}
