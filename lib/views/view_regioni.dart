import 'package:flutter/material.dart';


//* DATI REGIONALI VIEW *//


class DatiRegioni extends StatelessWidget {
  const DatiRegioni({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      margin: EdgeInsets.all(30),
      child: Text(
        'Dati Regioni',
        style: optionStyle,
      ),
    );
  }
}

