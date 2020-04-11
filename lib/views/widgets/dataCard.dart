
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  
  final String label;
  final String data;

  DataCard({@required this.label,@required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              data,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
