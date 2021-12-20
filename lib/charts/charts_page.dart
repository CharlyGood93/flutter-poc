import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutterpoc/charts/charts.dart';
import 'package:flutterpoc/charts/charts_data.dart';

class ChartsPage extends StatelessWidget {
  final List<ChartsData> data = [
    ChartsData(
        ammount: 50000,
        year: '2020',
        barColor: charts.ColorUtil.fromDartColor(Colors.orange)),
    ChartsData(
        ammount: 10000,
        year: '2020',
        barColor: charts.ColorUtil.fromDartColor(Colors.orange)),
    ChartsData(
        ammount: 8000,
        year: '2020',
        barColor: charts.ColorUtil.fromDartColor(Colors.orange)),
    ChartsData(
        ammount: 150000,
        year: '2021',
        barColor: charts.ColorUtil.fromDartColor(Colors.orange)),
    ChartsData(
        ammount: 350000,
        year: '2021',
        barColor: charts.ColorUtil.fromDartColor(Colors.orange))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Charts(
          data: data,
        ),
      ),
    );
  }
}