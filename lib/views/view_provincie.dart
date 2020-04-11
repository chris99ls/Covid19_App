

//* DATI PROVINCIE VIEW *//

import 'package:flutter/material.dart';

class DatiProvince extends StatelessWidget {
  const DatiProvince({
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
        'Dati Provincie',
        style: optionStyle,
      ),
    );
  }
}
