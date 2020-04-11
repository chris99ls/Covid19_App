import 'package:info_covid/dato_nazionale.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'views/view_nazione.dart';



Future<List<DatoNazionale>> fetchDataNazionale(http.Client client) async {
  final response =
      await client.get('https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-json/dpc-covid19-ita-andamento-nazionale.json');

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseDataNazionale, response.body);
}

// A function that converts a response body into a List<Photo>.
List<DatoNazionale> parseDataNazionale(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<DatoNazionale>((json) => DatoNazionale.fromJson(json)).toList();
}
