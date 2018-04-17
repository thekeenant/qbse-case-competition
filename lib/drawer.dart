import 'package:flutter/material.dart';
import 'package:qbse/home.dart';

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
              Navigator.pushNamed(context, '/');
            },
          ),
          new ListTile(
            title: new Text('Transactions'),
            onTap: () {
              Navigator.pushNamed(context, '/transactions');
            },
          ),
          new ListTile(
            title: new Text('Bank Accounts'),
            onTap: () {
              Navigator.pushNamed(context, '/banks');
            },
          ),
          new ListTile(
            title: new Text('Taxes'),
            onTap: () {},
          ),
          new ListTile(
            title: new Text('Invoices'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
