import 'package:flutter/material.dart';
import 'package:unit_converter/unit.dart';

class ConverterRoute extends StatelessWidget {

  final String title;
  final List<Unit> units;

  const ConverterRoute({
    @required this.title,
    @required this.units,
  }) : assert(title != null);

  @override
  Widget build(BuildContext context) {

    final unitWidgets = units.map((Unit unit) {
      return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        color: Colors.teal,
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            )
          ],
        ),
      );
    }).toList();

    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(children: unitWidgets,),
      ),
    );
  }

}