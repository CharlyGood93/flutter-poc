import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class ChartsData {
  final String year;
  final int ammount;
  final charts.Color barColor;

ChartsData({
  required this.year,
  required this.ammount,
  required this.barColor
});

}