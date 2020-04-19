import 'package:flutter/material.dart';
import 'package:info_covid/views/models/datoRegione.dart';
import 'package:http/http.dart' as http;
import '../../fetch_data.dart';
import '../Regione.dart';
import 'cardRow_regione.dart';

class SelectorRegione extends StatefulWidget {
  @override
  _SelectorRegioneState createState() => _SelectorRegioneState();

  final Function onChange;

  SelectorRegione({this.onChange});
}

class _SelectorRegioneState extends State<SelectorRegione> {
  List<Regione> _regioni = Regione.getRegioni();
  List<DropdownMenuItem<Regione>> _dropdownMenuItems;
  Regione _selectedRegione;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_regioni);
    _selectedRegione = _dropdownMenuItems[10].value;
    super.initState();
  }

  List<DropdownMenuItem<Regione>> buildDropdownMenuItems(List regioni) {
    List<DropdownMenuItem<Regione>> items = List();
    for (Regione regione in regioni) {
      items.add(
        DropdownMenuItem(
          value: regione,
          child: Text(regione.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Regione selectedRegione) {
    setState(() {
      _selectedRegione = selectedRegione;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DropdownButton(
          value: _selectedRegione,
          items: _dropdownMenuItems,
          onChanged: onChangeDropdownItem,
        ),
        SizedBox(
          height: 20,
        ),
        FutureBuilder<List<DatoRegione>>(
          future: fetchDataRegione(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? CardRow(
                    dati: snapshot.data,
                    id: _selectedRegione.id,
                  )
                : Container(
                    width: double.infinity,
                    height: 100,
                    child: Center(child: CircularProgressIndicator()));
          },
        ),
      ],
    );
  }
}
