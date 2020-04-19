import 'package:flutter/material.dart';
import 'package:info_covid/views/models/datoRegione.dart';

import 'dataCard.dart';

class CardRow extends StatelessWidget {
  final List<DatoRegione> dati;
  final int id;
  CardRow({Key key, @required this.dati,@required this.id}) : super(key: key);

  List<DatoRegione> getDatiRegione(List<DatoRegione> dati, int id) {
    List<DatoRegione> regione=[];
    for (var dato in dati) {
      if (dato.codiceRegione == id) {
        regione.add(dato);
      }
    }
    return regione;
  }

  String getNuoviCasi_Regione(List<DatoRegione> regione) {
    int nuoviCasi = regione.last.nuoviPositivi;
    return '+ $nuoviCasi';
  }

  String getNuoviGuariti_Regione(List<DatoRegione> regione) {
    int nuoviGuariti =
        regione.last.dimessiGuariti - regione[regione.length-2].dimessiGuariti;
    return '+ $nuoviGuariti';
  }

  String getNuoviDeceduti_Regione(List<DatoRegione> regione) {
    int nuoviDeceduti = regione.last.deceduti - regione[regione.length - 2].deceduti;
    return '+ $nuoviDeceduti';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: DataCard(
            label: 'nuovi casi',
            data: getNuoviCasi_Regione(getDatiRegione(dati, id)),
            color: Colors.amber,
          ),
        ),
        Expanded(
          child: DataCard(
            label: 'guariti',
            data: getNuoviGuariti_Regione(getDatiRegione(dati, id)),
            color: Colors.green,
          ),
        ),
        Expanded(
          child: DataCard(
            label: 'deceduti',
            data: getNuoviDeceduti_Regione(getDatiRegione(dati, id)),
            color: Colors.red,
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
