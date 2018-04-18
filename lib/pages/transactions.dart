import 'package:flutter/material.dart';
import 'package:qbse/charts.dart';
import 'package:qbse/drawer.dart';

final transactions = [
  new ListTile(
    title: new Text('Capital One'),
    subtitle: new Text('Mastercard'),
    trailing: new Text("-\$0.09"),
    onTap: () {},
  ),
  new ListTile(
    title: new Text('Amazon'),
    subtitle: new Text('Mastercard'),
    trailing: new Text("-\$12.45"),
    onTap: () {},
  ),
  new ListTile(
    title: new Text('Kwik Trip'),
    subtitle: new Text('Savings'),
    trailing: new Text("-\$18.10"),
    onTap: () {},
  ),
  new ListTile(
    title: new Text('Deposit Barclays Bank'),
    subtitle: new Text(''),
    trailing: new Text("\$65.00"),
    onTap: () {},
  ),
  new ListTile(
    title: new Text('Holiday'),
    subtitle: new Text('Gas'),
    trailing: new Text("-\$25.00"),
    onTap: () {},
  ),
  new ListTile(
    title: new Text('Holiday'),
    subtitle: new Text('Gas'),
    trailing: new Text("-\$22.00"),
    onTap: () {},
  ),
  new ListTile(
    title: new Text('Car Wash'),
    subtitle: new Text('Holiday'),
    trailing: new Text("-\$8.00"),
    onTap: () {},
  ),
  new ListTile(
    title: new Text('Super America'),
    subtitle: new Text('Gas'),
    trailing: new Text("-\$21.00"),
    onTap: () {},
  ),
];

class TransactionPage extends StatefulWidget {
  TransactionPage({Key key}) : super(key: key);

  @override
  _TransactionPageState createState() => new _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  int _index = 0;

  Widget renderContent() {
    if (_index == 0) {
      return new Text("New");
    } else {
      return new Text("Reviewed");
    }
  }

  @override
  Widget build(BuildContext context) {
    final list1 = transactions.getRange(0, 3).toList();
    transactions.shuffle();
    final list2 = transactions.toList();

    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Transactions'),
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
        drawer: new AppDrawer(),
        body: new TabBarView(
          children: [
            new ListView(
              children: list1
            ),
            new ListView(
              children: list2
            ),
          ],
        ),
      ),
    );
  }
}
