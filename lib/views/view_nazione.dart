import 'package:flutter/material.dart';
import 'package:info_covid/views/widgets/dataCard.dart';


//* DATI NAZIONALI VIEW *//


class DatiNazione extends StatelessWidget {
  const DatiNazione({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[


        //* TITLE *//
        Container(
          width: 200,
          height: 50,
          margin: EdgeInsets.all(30),
          child: Text(
            'Dati Nazione',
            style: optionStyle,
          ),
        ), 
        //* END TITLE *//

        //* NUOVI DATI CARD ROW *//
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(width: 10,),
            Expanded(
              child: DataCard(label: 'nuovi casi',data: '+ XXXX',),
            ),
            Expanded(
              child: DataCard(label: 'guariti',data: '+ XXXX',),
            ),
            Expanded(
              child: DataCard(label: 'deceduti',data: '+ XXXX',),
            ),
            SizedBox(width: 10,),
          ],
            ),
        //* END NUOVI DATI CARD ROW *//
        
      


        //* GRAFICO STORICO NAZIONALE *//
        //* END GRAFICO STORICO NAZIONALE *//



        //* LISTA DATATA STORICO NAZIONALE *//
        //* LISTA DATATA STORICO NAZIONALE *//
      
      ],
    );
  }
}
