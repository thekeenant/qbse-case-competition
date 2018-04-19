import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => new _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  var mileage = true;

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: [
          new DrawerHeader(
            child: new UserAccountsDrawerHeader(
              accountName: new Text('Ubi Uberton'),
              accountEmail: new Text('ubi@email.com'),
              currentAccountPicture: new Image.asset('assets/ubi.png'),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/bg.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            padding: EdgeInsets.zero,
          ),
          new ListTile(
            title: new Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            leading: new Icon(Icons.dashboard),
          ),
          new ListTile(
            title: new Text('Insights'),
            onTap: () {
              Navigator.pushNamed(context, '/insights');
            },
            leading: new Icon(Icons.show_chart),
          ),
          new ListTile(
            title: new Text('Mileage'),
            onTap: () {
              Navigator.pushNamed(context, '/mileage');
            },
            leading: new Icon(Icons.directions_car),
            trailing: new Switch(
              value: mileage,
              onChanged: (value) {
                setState(() {
                  mileage = value;
                });
              },
            ),
          ),
          new ListTile(
            title: new Text('Transactions'),
            onTap: () {
              Navigator.pushNamed(context, '/transactions');
            },
            leading: new Icon(Icons.list),
          ),
          new ListTile(
            title: new Text('Taxes'),
            onTap: () {
              Navigator.pushNamed(context, '/taxes');
            },
            leading: new Icon(Icons.insert_drive_file),
          ),
          new Divider(),
          new ListTile(
            title: new Text('Bank Accounts', style: new TextStyle(fontWeight: FontWeight.normal),),
            onTap: () {
              Navigator.pushNamed(context, '/banks');
            },
            leading: new Icon(Icons.account_balance),
          ),
          new ListTile(
            title: new Text('Reports', style: new TextStyle(fontWeight: FontWeight.normal),),
            onTap: () {
              Navigator.pushNamed(context, '/reports');
            },
            leading: new Icon(Icons.file_download),
          ),
          new ListTile(
            title: new Text('Settings', style: new TextStyle(fontWeight: FontWeight.normal),),
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
