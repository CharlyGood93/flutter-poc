// To parse this JSON data, do
//
//     final data = dataFromMap(jsonString);

import 'dart:convert';

class Data {
    Data({
        required this.consumo,
        required this.mes,
    });

    int consumo;
    String mes;
    String? id;

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        consumo: json["consumo"],
        mes: json["mes"],
    );

    Map<String, dynamic> toMap() => {
        "consumo": consumo,
        "mes": mes,
    };
}
