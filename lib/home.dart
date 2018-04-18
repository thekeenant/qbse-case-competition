import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qbse/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final profits = [8.50, 54.21, 251.43, 201.90, 1021.10, 1021.50];

  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    final num =
        new NumberFormat.currency(symbol: '\$').format(profits[_selected]);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new ListView(
        children: [
          new Card(
            child: new Column(
              children: [
                new DropdownButton<int>(
                  items: [
                    new DropdownMenuItem(
                      child: new Text('Current Drive'),
                      value: 0,
                    ),
                    new DropdownMenuItem(
                      child: new Text('Last Drive'),
                      value: 1,
                    ),
                    new DropdownMenuItem(
                      child: new Text('This Week'),
                      value: 2,
                    ),
                    new DropdownMenuItem(
                      child: new Text('Last Week'),
                      value: 3,
                    ),
                    new DropdownMenuItem(
                      child: new Text('This Year'),
                      value: 4,
                    ),
                    new DropdownMenuItem(
                      child: new Text('All Time'),
                      value: 5,
                    ),
                  ],
                  onChanged: (selected) {
                    setState(() {
                      _selected = selected;
                    });
                  },
                  value: _selected,
                ),
                new ListTile(
                  title: new Text(
                    '+$num',
                    style: new TextStyle(
                      fontSize: 32.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: new Text('Profit'),
                  onTap: () {
                    Navigator.pushNamed(context, '/profit');
                  },
                ),
              ],
            ),
          ),
          new Card(
            child: new ListTile(
              title: new Text('Current Activity'),
              trailing: new Row(
                children: [
                  new Text('High'),
                  new Icon(Icons.warning, color: Colors.orange),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/analytics');
              },
            ),
          ),
          new Card(
            child: new ListTile(
              title: new Text('Taxes'),
              onTap: () {
                Navigator.pushNamed(context, '/taxes');
              },
            ),
          ),
        ],
      ),
      drawer: new AppDrawer(),
    );
  }
}
