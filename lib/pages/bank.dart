import 'package:flutter/material.dart';
import 'package:qbse/charts.dart';
import 'package:qbse/drawer.dart';

final banks = [];

class BankPage extends StatefulWidget {
  BankPage({Key key}) : super(key: key);

  @override
  _BankPageState createState() => new _BankPageState();
}

class _BankPageState extends State<BankPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Bank Accounts'),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        child: new Icon(Icons.add),
      ),
      body: new ListView(
        children: [
          new Card(
            child: new Column(
              children: [
                new ListTile(
                  title: const Text('Capital One 360'),
                  subtitle: const Text('Last updated: 11 min ago'),
                  trailing: new Icon(Icons.menu),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              children: [
                new ListTile(
                  title: const Text('Capital One Credit Cards'),
                  subtitle: const Text('Last updated: 1 min ago'),
                  trailing: new Icon(Icons.menu),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              children: [
                new ListTile(
                  title: const Text('Barclay Online Banking'),
                  subtitle: const Text('Last updated: 11 min ago'),
                  trailing: new Icon(Icons.menu),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
