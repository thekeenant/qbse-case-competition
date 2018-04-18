import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qbse/drawer.dart';
import 'package:qbse/pages/profit.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final profits = [5.21, -0.21, 251.43, 201.90, 285.20, 1021.10, 1021.10, 1021.50];

  int _profitTimeSelected = 0;
  int _heatmapSelected = 0;

  @override
  Widget build(BuildContext context) {
    final profit = profits[_profitTimeSelected];
    final num = new NumberFormat.currency(symbol: '\$').format(profit);
    final numColor = profit > 0 ? Colors.green : Colors.red;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new ListView(
        children: [
          new Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new ProfitPage(_profitTimeSelected),
                  ),
                );
              },
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Padding(
                    padding: new EdgeInsets.only(left: 20.0),
                    child: new DropdownButton<int>(
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
                          child: new Text('This Month'),
                          value: 4,
                        ),
                        new DropdownMenuItem(
                          child: new Text('3 Months'),
                          value: 5,
                        ),
                        new DropdownMenuItem(
                          child: new Text('This Year'),
                          value: 6,
                        ),
                        new DropdownMenuItem(
                          child: new Text('All Time'),
                          value: 7,
                        ),
                      ],
                      onChanged: (selected) {
                        setState(() {
                          _profitTimeSelected = selected;
                        });
                      },
                      value: _profitTimeSelected,
                    ),
                  ),
                  new ListTile(
                    title: new Text(
                      '$num',
                      style: new TextStyle(
                        fontSize: 32.0,
                        color: numColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: new Text('Rideshare Profit Estimate'),
                  ),
                ],
              ),
            ),
          ),
          new Card(
            child: new InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/analytics');
              },
              child: new Column(
                children: [
                  new ListTile(
                    title: new Text('Current Activity: '),
                    trailing: new Row(
                      children: [
                        new Text('High', style: new TextStyle(fontWeight: FontWeight.bold)),
                        new Icon(Icons.warning, color: Colors.orange),
                      ],
                    ),
                  ),
                  new ListTile(
                    title: new Text('Heatmap: '),
                    trailing: new DropdownButton(
                      items: [
                        new DropdownMenuItem(
                          child: new Text('Past hour'),
                          value: 0,
                        ),
                        new DropdownMenuItem(
                          child: new Text('Past 24 hours'),
                          value: 1,
                        ),
                        new DropdownMenuItem(
                          child: new Text('Past week'),
                          value: 2,
                        ),
                      ],
                      value: _heatmapSelected,
                      onChanged: (index) {
                        setState(() {
                          _heatmapSelected = index;
                        });
                      },
                    ),
                  ),
                  new Image.asset('assets/heatmap.png'),
                ],
              ),
            ),
          ),
          new Card(
            child: new ListTile(
              title: new Text('Taxes'),
              onTap: () {
                Navigator.pushNamed(context, '/taxes');
              },
              subtitle: new Text('Monthly estimate? Yearly estimate?'),
            ),
          ),
        ],
      ),
      drawer: new AppDrawer(),
    );
  }
}
