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

  GlobalKey<ScaffoldState> key = new GlobalKey();

  int _profitTimeSelected = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: key,
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
                key.currentState.showSnackBar(new SnackBar(content: new Text("Not implemented.")));
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
