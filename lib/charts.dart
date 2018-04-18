import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Sample ordinal data type.
class Statistic {
  final String name;
  final double value;

  Statistic(this.name, this.value);
}

final axisSpec = new charts.NumericAxisSpec(
  tickProviderSpec: new charts.BasicNumericTickProviderSpec(
    desiredTickCount: 4,
    dataIsInWholeNumbers: false,
  ),
  tickFormatterSpec: new charts.BasicNumericTickFormatterSpec(
    new NumberFormat.currency(symbol: '\$'),
  ),
);

class DayChart extends StatelessWidget {
  final List<charts.Series> seriesList;

  DayChart(this.seriesList);

  /// Creates a [BarChart] with sample data and no transition.
  factory DayChart.withSampleData() {
    return new DayChart(
      _createSampleData(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart<Statistic>(
      seriesList,
      primaryMeasureAxis: axisSpec,
      vertical: false,
      animate: false,
    );
  }

  static List<charts.Series<Statistic, String>> _createSampleData() {
    final data = [
      new Statistic('Sun', 4.50),
      new Statistic('Mon', 5.25),
      new Statistic('Tues', 5.50),
      new Statistic('Wed', 4.50),
      new Statistic('Thurs', 4.90),
      new Statistic('Fri', 6.10),
      new Statistic('Sat', 5.80),
    ];

    return [
      new charts.Series<Statistic, String>(
        id: 'Top Days',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        domainFn: (sales, _) => sales.name,
        measureFn: (sales, _) => sales.value,
        data: data,
      )
    ];
  }
}

/// Example of a line chart rendered with dash patterns.
class HourlyAverageChart extends StatelessWidget {
  final List<charts.Series> seriesList;

  HourlyAverageChart(this.seriesList);

  /// Creates a [LineChart] with sample data and no transition.
  factory HourlyAverageChart.withSampleData() {
    return new HourlyAverageChart(
      _createSampleData(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart<LinearSales>(
      seriesList,
      animate: false,
    );
  }

  /// Create three series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data1 = [
      new LinearSales(0, 6.0),
      new LinearSales(2, 6.2),
      new LinearSales(3, 5.9),
      new LinearSales(7, 5.2),
      new LinearSales(9, 2.8),
      new LinearSales(16, 7.2),
      new LinearSales(17, 6.0),
      new LinearSales(20, 5.0),
      new LinearSales(23, 6.9),
    ];
    final data2 = [
      new LinearSales(0, 5.0),
      new LinearSales(1, 6.1),
      new LinearSales(2, 5.5),
      new LinearSales(6, 8.0),
      new LinearSales(7, 6.5),
      new LinearSales(10, 6.0),
      new LinearSales(14, 4.5),
      new LinearSales(15, 4.0),
      new LinearSales(16, 4.2),
      new LinearSales(17, 4.9),
      new LinearSales(19, 5.0),
      new LinearSales(20, 6.0),
      new LinearSales(23, 4.0),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Data1',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.hour,
        measureFn: (LinearSales sales, _) => sales.value,
        data: data1,
      ),
      new charts.Series<LinearSales, int>(
        id: 'Data2',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        dashPattern: [2, 2],
        domainFn: (LinearSales sales, _) => sales.hour,
        measureFn: (LinearSales sales, _) => sales.value,
        data: data2,
      ),
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int hour;
  final double value;

  LinearSales(this.hour, this.value);
}
