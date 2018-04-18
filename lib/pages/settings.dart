import 'package:flutter/material.dart';
import 'package:qbse/charts.dart';
import 'package:qbse/drawer.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => new _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Settings'),
      ),
      drawer: new AppDrawer(),
      body: new ListView(
        children: [
          new ListTile(
            title: new Text('Account'),
            subtitle: new Text('john@doe.com'),
            onTap: () {},
          ),
          new ListTile(
            title: new Text('Subscription'),
            subtitle: new Text('Free Trial'),
            onTap: () {},
          ),
          new ListTile(
            title: new Text('Vehicle'),
            onTap: () {
              Navigator.pushNamed(context, '/vehicle');
            },
          ),
        ],
      ),
    );
  }
}
