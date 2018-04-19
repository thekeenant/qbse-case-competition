import 'package:flutter/material.dart';
import 'package:qbse/charts.dart';
import 'package:qbse/drawer.dart';

class ReportsPage extends StatefulWidget {
  ReportsPage({Key key}) : super(key: key);

  @override
  _ReportsPageState createState() => new _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  final GlobalKey<ScaffoldState> key = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: key,
      appBar: new AppBar(
        title: new Text('Reports'),
      ),
      body: new ListView(
        children: [
          new Divider(),
          new ListTile(
            title: new Text('Transaction log'),
            subtitle: new Text(
              'Shows the business and personal transaction you had including vendor, amount, date, and how you logged them.',
            ),
            onTap: () {},
          ),
          new Divider(),
          new ListTile(
            title: new Text('Mileage log'),
            subtitle: new Text(
              'Shows the business and personal miles you drove, including purpose, deduction amount, and how you logged them.',
            ),
            onTap: () {},
          ),
          new Divider(),
          new ListTile(
            title: new Text('Profit and Loss Statement'),
            subtitle: new Text(
              'Also called P&L or income statement, summarizes income and expenses to show you how profitable you are.',
            ),
            onTap: () {},
          ),
          new Divider(),
          new ListTile(
            title: new Text('Tax Summary'),
            subtitle: new Text(
              'Summarizes your taxable business profit, shows totals for Schedule C and healthcare deductions.',
            ),
            onTap: () {},
          ),
          new Divider(),
          new ListTile(
            title: new Text('Tax Details'),
            subtitle: new Text(
              'Tax summary data plus detailed transaction info for each category.',
            ),
            onTap: () {},
          ),
          new Divider(),
        ],
      ),
    );
  }
}
