import 'package:flutter/material.dart';
import 'package:qbse/pages/analytics.dart';
import 'package:qbse/pages/bank.dart';
import 'package:qbse/pages/home.dart';
import 'package:qbse/pages/settings.dart';
import 'package:qbse/pages/splash.dart';
import 'package:qbse/pages/taxes.dart';
import 'package:qbse/pages/taxes_month.dart';
import 'package:qbse/pages/transactions.dart';
import 'package:qbse/pages/vehicle.dart';

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
//        '/profit': (_) => new ProfitPage(),
        '/banks': (_) => new BankPage(),
        '/vehicle': (_) => new VehiclePage(),
        '/taxmonth': (_) => new TaxMonthPage(),
        '/settings': (_) => new SettingsPage(),
        '/home': (_) => new HomePage(),
        '/analytics': (_) => new AnalyticsPage(),
        '/taxes': (_) => new TaxesPage(),
      },
      home: new SplashPage(),
    );
  }
}
