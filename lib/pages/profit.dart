import 'package:flutter/material.dart';
import 'package:qbse/charts.dart';

class ProfitPage extends StatefulWidget {
  ProfitPage(this._profitTimeSelected);

  final int _profitTimeSelected;

  @override
  _ProfitPageState createState() => new _ProfitPageState(_profitTimeSelected);
}

class _ProfitPageState extends State<ProfitPage> {
  _ProfitPageState(this._profitTimeSelected);

  int _profitTimeSelected = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Profit'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[

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
                  _profitTimeSelected = selected;
                });
              },
              value: _profitTimeSelected,
            ),
            new AspectRatio(
              child: new ProfitChart(),
              aspectRatio: 4/3,
            ),
          ],
        ),
      ),
    );
  }
}
