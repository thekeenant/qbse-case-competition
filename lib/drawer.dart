import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: [
          new DrawerHeader(
            child: new UserAccountsDrawerHeader(
              accountName: new Text('John Doe'),
              accountEmail: new Text('john@doe.com'),
            ),
            padding: EdgeInsets.zero,
          ),
          new ListTile(
            title: new Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            leading: new Icon(Icons.home),
          ),
          new ListTile(
            title: new Text('Transactions'),
            onTap: () {
              Navigator.pushNamed(context, '/transactions');
            },
            leading: new Icon(Icons.list),
          ),
          new ListTile(
            title: new Text('Bank Accounts'),
            onTap: () {
              Navigator.pushNamed(context, '/banks');
            },
            leading: new Icon(Icons.account_balance),
          ),
          new ListTile(
            title: new Text('Settings'),
            leading: new Icon(Icons.settings),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}
