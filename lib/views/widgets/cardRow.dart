import 'package:flutter/material.dart';
import 'package:info_covid/views/models/dato_nazionale.dart';

import 'dataCard.dart';

class CardRow extends StatelessWidget {
  final List<dynamic> dati;
  CardRow({Key key, this.dati}) : super(key: key);

  String getNuoviCasi_Nazionali(List<DatoNazionale> dati) {
    int nuoviCasi=dati.last.nuoviPositivi;
    return '+ $nuoviCasi';
  }

  String getNuoviGuariti_Nazionali(List<DatoNazionale> dati) {
    int nuoviGuariti = dati.last.dimessiGuariti -dati[dati.length-2].dimessiGuariti;
    return '+ $nuoviGuariti';
  }

  String getNuoviDeceduti_Nazionali(List<DatoNazionale> dati) {
    int nuoviDeceduti=dati.last.deceduti-dati[dati.length-2].deceduti;
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
            data: getNuoviCasi_Nazionali(dati),
            color: Colors.amber,
          ),
        ),
        Expanded(
          child: DataCard(
            label: 'guariti',
            data: getNuoviGuariti_Nazionali(dati),
            color: Colors.green,
          ),
        ),
        Expanded(
          child: DataCard(
            label: 'deceduti',
            data: getNuoviDeceduti_Nazionali(dati),
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