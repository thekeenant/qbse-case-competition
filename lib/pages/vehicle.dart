import 'package:flutter/material.dart';
import 'package:qbse/charts.dart';
import 'package:qbse/drawer.dart';

class VehiclePage extends StatefulWidget {
  VehiclePage({Key key}) : super(key: key);

  @override
  _VehiclePageState createState() => new _VehiclePageState();
}

class _VehiclePageState extends State<VehiclePage> {
  int dropdown1 = 0;
  int dropdown2 = 0;
  int dropdown3 = 0;

  @override
  Widget build(BuildContext context) {
    final showInfo = dropdown1 > 0 && dropdown2 > 0 && dropdown3 > 0;
    final str1 = showInfo ? '\$' : 'TBD';
    final str2 = showInfo ? '\$' : 'TBD';

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Vehicle'),
      ),
      body: new Form(
        child: new ListView(
          children: [
            new ListTile(
              title: new Text('Enter vehicle make/model/year:'),
              isThreeLine: true,
              subtitle: new Row(
                children: [
                  new DropdownButton(
                    value: dropdown1,
                    onChanged: (value) {
                      setState(() {
                        dropdown1 = value;
                      });
                    },
                    items: [
                      new DropdownMenuItem(
                        value: 0,
                        child: new Text('Make'),
                      ),
                      new DropdownMenuItem(
                        value: 1,
                        child: new Text('Ford'),
                      ),
                      new DropdownMenuItem(
                        value: 2,
                        child: new Text('Chevy'),
                      )
                    ],
                  ),
                  new DropdownButton(
                    value: dropdown2,
                    onChanged: (value) {
                      setState(() {
                        dropdown2 = value;
                      });
                    },
                    items: [
                      new DropdownMenuItem(
                        value: 0,
                        child: new Text('Model'),
                      ),
                      new DropdownMenuItem(
                        value: 1,
                        child: new Text('F150'),
                      ),
                      new DropdownMenuItem(
                        value: 2,
                        child: new Text('Edge'),
                      )
                    ],
                  ),
                  new DropdownButton(
                    value: dropdown3,
                    onChanged: (value) {
                      setState(() {
                        dropdown3 = value;
                      });
                    },
                    items: [
                      new DropdownMenuItem(
                        value: 0,
                        child: new Text('Year'),
                      ),
                      new DropdownMenuItem(
                        value: 1,
                        child: new Text('2018'),
                      ),
                      new DropdownMenuItem(
                        value: 2,
                        child: new Text('2017'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            new ListTile(
              title: new Text('Average Operation Cost/Mile:'),
              trailing: new Text(str1),
            ),
            new ListTile(
              title: new Text('Your Operation Cost/Mile:'),
              trailing: new Text(str2),
            ),
            new Divider(),
            new ListTile(
              title: new Text('Car purchase price'),
              subtitle: new TextField(
                keyboardType: TextInputType.number,
              ),
            ),
            new ListTile(
              title: new Text('Car purchase year'),
              subtitle: new TextField(
                keyboardType: TextInputType.number,
              ),
            ),
            new ListTile(
              title: new Text('% used for rideshare'),
              subtitle: new TextField(
                keyboardType: TextInputType.number,
              ),
            )
          ],
        ),
      ),
    );
  }
}
