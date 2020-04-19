import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:info_covid/views/models/datoRegione.dart';
import 'package:info_covid/views/models/dato_nazionale.dart';


//* FETCH DEI DATI NAZIONALI *//
Future<List<DatoNazionale>> fetchDataNazionale(http.Client client) async {
  final response =
      await client.get('https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-json/dpc-covid19-ita-andamento-nazionale.json');

  return compute(parseDataNazionale, response.body);
}

List<DatoNazionale> parseDataNazionale(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<DatoNazionale>((json) => DatoNazionale.fromJson(json)).toList();
}

//* FETCH DEI DATI REGIONALI *//

Future<List<DatoRegione>> fetchDataRegione(http.Client client) async {
  final response =
      await client.get('https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-json/dpc-covid19-ita-regioni.json');

  return compute(parseDataRegione, response.body);
}

List<DatoRegione> parseDataRegione(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<DatoRegione>((json) => DatoRegione.fromJson(json)).toList();
}
//* END FETCH DEI DATI REGIONALI *//


