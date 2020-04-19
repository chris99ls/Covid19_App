import 'package:flutter/material.dart';
import 'package:info_covid/views/widgets/selectorRegione.dart';

//* DATI REGIONALI VIEW *//

class DatiRegioni extends StatelessWidget {
  const DatiRegioni({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //* TITLE *//
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 200,
            height: 50,
            margin: EdgeInsets.all(30),
            child: Text(
              'Dati Regioni',
              style: optionStyle,
            ),
          ),
        ),
        //* END OF TITLE *//

        //* SELECTOR REGIONE E CARDROW CON NUOVI DATI*//
        SelectorRegione(),
        //* END OF SELECTOR REGIONE E CARDROW CON NUOVI DATI*//

        
      ],
    );
  }


}
