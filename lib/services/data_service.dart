import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterpoc/models/models.dart';
import 'package:http/http.dart' as http;

class DataService extends ChangeNotifier {
  final String baseUrl = 'flutter-poc-ef955-default-rtdb.firebaseio.com';
  final List<Data> data = [];
  bool isLoading = true;

  DataService() {
    this.loadData();
  }

  Future loadData() async {
    final url = Uri.https(baseUrl, "products.json");
    final response = await http.get(url);
    final Map<String, dynamic> dataMap = json.decode(response.body);
    dataMap.forEach((key, value) {
      final tempData = Data.fromMap(value);
      tempData.id = key;
      data.add(tempData);
    });
  }
}
