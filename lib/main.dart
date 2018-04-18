import 'package:flutter/material.dart';
import 'package:qbse/analytics.dart';
import 'package:qbse/bank.dart';
import 'package:qbse/home.dart';
import 'package:qbse/profit.dart';
import 'package:qbse/splash.dart';
import 'package:qbse/taxes.dart';
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
        '/profit': (_) => new ProfitPage(),
        '/banks': (_) => new BankPage(),
        '/home': (_) => new HomePage(),
        '/analytics': (_) => new AnalyticsPage(),
        '/taxes': (_) => new TaxesPage(),
      },
      home: new SplashPage(),
    );
  }
}
