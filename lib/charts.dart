import 'package:charts_flutter/flutter.dart' as charts;
import 'package:fcharts/fcharts.dart';
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


class ProfitChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ChartDataView(
      chartPadding: new EdgeInsets.fromLTRB(40.0, 20.0, 20.0, 40.0),
      decor: new ChartDecor(
        axes: [
          new ChartAxisData(
            position: ChartPosition.left,
            offset: 0.0,
            ticks: [
              new AxisTickData(
                value: 0.0,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$10'),
                ],
              ),
              new AxisTickData(
                value: 0.2,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$0'),
                ],
              ),
              new AxisTickData(
                value: 0.4,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$10'),
                ],
              ),
              new AxisTickData(
                value: 0.6,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$20'),
                ],
              ),
              new AxisTickData(
                value: 0.8,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$30'),
                ],
              ),
              new AxisTickData(
                value: 1.0,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$40'),
                ],
              ),
            ],
          ),
          new ChartAxisData(
            position: ChartPosition.bottom,
            offset: 0.0,
            ticks: [
              new AxisTickData(
                value: 0.075,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '7:00pm'),
                ],
              ),
              new AxisTickData(
                value: 0.25,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '8:00pm'),
                ],
              ),
              new AxisTickData(
                value: 0.425,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '9:00pm'),
                ],
              ),
              new AxisTickData(
                value: 0.58,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '10:00pm'),
                ],
              ),
              new AxisTickData(
                value: 0.75,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '11:00pm'),
                ],
              ),
              new AxisTickData(
                value: 0.925,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '12:00am'),
                ],
              ),
            ],
          ),
        ],
      ),
      charts: [
        new BarGraphData(
          groupWidthFraction: 0.90,
          groups: [
            new BarGroupData(
              stackWidthFraction: 1.0,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.4,
                      paint: [
                        new PaintOptions(color: Colors.green)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
            new BarGroupData(
              stackWidthFraction: 1.0,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.05,
                      paint: [
                        new PaintOptions(color: Colors.red)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
            new BarGroupData(
              stackWidthFraction: 1.0,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.5,
                      paint: [
                        new PaintOptions(color: Colors.green)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
            new BarGroupData(
              stackWidthFraction: 1.0,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.8,
                      paint: [
                        new PaintOptions(color: Colors.green)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
            new BarGroupData(
              stackWidthFraction: 1.0,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.3,
                      paint: [
                        new PaintOptions(color: Colors.green)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
            new BarGroupData(
              stackWidthFraction: 1.0,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.52,
                      paint: [
                        new PaintOptions(color: Colors.green)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ReflectionChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ChartDataView(
      animationDuration: const Duration(seconds: 0),
      chartPadding: new EdgeInsets.fromLTRB(40.0, 20.0, 20.0, 40.0),
      decor: new ChartDecor(
        legend: new LegendData(
          position: ChartPosition.top,
          layout: LegendLayout.horizontal,
          items: [
            new LegendItemData(
              symbol: new LegendSquareSymbol(
                paint: [
                  new PaintOptions(color: Colors.green)
                ],
              ),
              text: 'Profit',
            ),
            new LegendItemData(
              symbol: new LegendSquareSymbol(
                paint: [
                  new PaintOptions(color: Colors.red)
                ],
              ),
              padding: new EdgeInsets.only(left: 10.0),
              text: 'Loss',
            ),
            new LegendItemData(
              symbol: new LegendSquareSymbol(
                paint: [
                  new PaintOptions(color: Colors.blue)
                ],
              ),
              padding: new EdgeInsets.only(left: 10.0),
              text: 'Acceptable Rate',
            ),
          ],
        ),
        axes: [
          new ChartAxisData(
            position: ChartPosition.left,
            offset: 0.0,
            ticks: [
              new AxisTickData(
                value: 0.0,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$-100'),
                ],
              ),
              new AxisTickData(
                value: 0.2,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$0'),
                ],
              ),
              new AxisTickData(
                value: 0.4,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$100'),
                ],
              ),
              new AxisTickData(
                value: 0.6,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$200'),
                ],
              ),
              new AxisTickData(
                value: 0.8,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$300'),
                ],
              ),
              new AxisTickData(
                value: 1.0,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: '\$400'),
                ],
              ),
            ],
          ),
          new ChartAxisData(
            position: ChartPosition.bottom,
            offset: 0.0,
            ticks: [
              new AxisTickData(
                value: 0.1,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: 'Jan'),
                ],
              ),
              new AxisTickData(
                value: 0.25,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: 'Mar'),
                ],
              ),
              new AxisTickData(
                value: 0.425,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: 'May'),
                ],
              ),
              new AxisTickData(
                value: 0.575,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: 'Jun'),
                ],
              ),
              new AxisTickData(
                value: 0.75,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: 'Sept'),
                ],
              ),
              new AxisTickData(
                value: 0.925,
                width: 0.2,
                labelers: [
                  new NotchTickLabeler(),
                  new TextTickLabeler(text: 'Dec'),
                ],
              ),
            ],
          ),
        ],
      ),
      charts: [
        new BarGraphData(
          groupWidthFraction: 0.90,
          groups: [
            new BarGroupData(
              stackWidthFraction: 0.9,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.4,
                      paint: [
                        new PaintOptions(color: Colors.green)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.3,
                      paint: [
                        new PaintOptions(color: Colors.blue.withOpacity(0.7))
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
            new BarGroupData(
              stackWidthFraction: 0.9,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.05,
                      paint: [
                        new PaintOptions(color: Colors.red)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.6,
                      paint: [
                        new PaintOptions(color: Colors.blue.withOpacity(0.7))
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
            new BarGroupData(
              stackWidthFraction: 0.9,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.65,
                      paint: [
                        new PaintOptions(color: Colors.green)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.6,
                      paint: [
                        new PaintOptions(color: Colors.blue.withOpacity(0.7))
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
            new BarGroupData(
              stackWidthFraction: 0.9,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.85,
                      paint: [
                        new PaintOptions(color: Colors.green)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.6,
                      paint: [
                        new PaintOptions(color: Colors.blue.withOpacity(0.7)),
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
            new BarGroupData(
              stackWidthFraction: 0.9,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.52,
                      paint: [
                        new PaintOptions(color: Colors.green)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.4,
                      paint: [
                        new PaintOptions(color: Colors.blue.withOpacity(0.7))
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
            new BarGroupData(
              stackWidthFraction: 0.9,
              stacks: [
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.52,
                      paint: [
                        new PaintOptions(color: Colors.green)
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
                new BarStackData(
                  bars: [
                    new BarData(
                      base: 0.2,
                      value: 0.4,
                      paint: [
                        new PaintOptions(color: Colors.blue.withOpacity(0.7))
                      ],
                    ),
                  ],
                  range: new Span(0.0, 1.0),
                  base: 0.2,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
