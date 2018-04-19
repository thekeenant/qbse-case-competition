import 'package:flutter/material.dart';
import 'package:qbse/charts.dart';
import 'package:qbse/drawer.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => new _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final GlobalKey<ScaffoldState> key = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: key,
      appBar: new AppBar(
        title: new Text('Settings'),
      ),
      body: new ListView(
        children: [
          new ListTile(
            title: new Text('Account'),
            subtitle: new Text('ubi@email.com'),
            onTap: () {
              key.currentState.showSnackBar(new SnackBar(
                content: new Text("Opens your account details page."),
              ));
            },
          ),
          new ListTile(
            title: new Text('Subscription'),
            subtitle: new Text('Free Trial'),
            onTap: () {
              key.currentState.showSnackBar(new SnackBar(
                content: new Text("Manages your Quickbooks subscription."),
              ));
            },
          ),
          new ListTile(
            title: new Text('Sync with Uber'),
            onTap: () {
              key.currentState.showSnackBar(new SnackBar(
                content: new Text("Opens an Uber login page."),
              ));
            },
          ),
          new ListTile(
            title: new Text('Sync with Lyft'),
            onTap: () {
              key.currentState.showSnackBar(new SnackBar(
                content: new Text("Opens a Lyft login page."),
              ));
            },
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
