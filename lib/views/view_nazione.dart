import 'package:flutter/material.dart';
import 'package:info_covid/dato_nazionale.dart';
import 'package:info_covid/fetch_data.dart';
import 'package:http/http.dart' as http;
import 'widgets/cardRow.dart';

//* DATI NAZIONALI VIEW *//

class DatiNazione extends StatelessWidget {
  const DatiNazione({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: <Widget>[
          //* TITLE *//
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 200,
              height: 50,
              margin: EdgeInsets.all(30),
              child: Text(
                'Dati Nazione',
                style: optionStyle,
              ),
            ),
          ),
          //* END TITLE *//

          //* NUOVI DATI CARD ROW *//
          FutureBuilder<List<DatoNazionale>>(
            future: fetchDataNazionale(http.Client()),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);

              return snapshot.hasData
                  ? CardRow(dati: snapshot.data)
                  : Container(
                      width: double.infinity,
                      height: 100,
                      child: Center(child: CircularProgressIndicator()));
            },
          ),
          //* END NUOVI DATI CARD ROW *//

          SizedBox(
            height: 20,
          ),

          //* GRAFICO STORICO NAZIONALE *//

          // TODO: Grafico dell'andamneto di nuovi casi ,guariti,deceduti

          Container(
            width: double.infinity,
            height: 300,
            child: Card(
              elevation: 8,
              child: Center(
                child: Text('#Graph'),
              ),
            ),
          ),
          //* END GRAFICO STORICO NAZIONALE *//

          SizedBox(
            height: 20,
          ),

          //* LISTA DATATA STORICO NAZIONALE *//

          // TODO: Refactoring della lista e collegamento con dati da json 
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 18,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    width: double.infinity,
                    height: 75,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 14),
                        child: Text(
                          'Some text',
                        ),
                      ),
                    ),
                  ),
                );
              }),

          //* LISTA DATATA STORICO NAZIONALE *//
        ],
      ),
    );
  }
}
