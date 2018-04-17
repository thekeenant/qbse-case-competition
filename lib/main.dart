import 'package:flutter/material.dart';
import 'package:qbse/bank.dart';
import 'package:qbse/home.dart';
import 'package:qbse/transactions.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Self Employed',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/transactions': (_) => new TransactionPage(),
        '/banks': (_) => new BankPage(),
      },
      home: new HomePage(),
    );
  }
}
