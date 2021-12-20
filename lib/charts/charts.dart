import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutterpoc/charts/charts_data.dart';

class Charts extends StatelessWidget {
  final List<ChartsData> data;

  Charts({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ChartsData, String>> series = [
      charts.Series(
          id: "developers",
          data: data,
          domainFn: (ChartsData series, _) => series.year,
          measureFn: (ChartsData series, _) => series.ammount,
          colorFn: (ChartsData series, _) => series.barColor)
    ];

    return Container(
      height: 300,
      padding: EdgeInsets.all(25),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            children: <Widget>[
              Text(
                "Montos de tarjeta por año",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
