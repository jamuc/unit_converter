import 'package:flutter/material.dart';
import 'package:unit_converter/converter_route.dart';
import 'package:unit_converter/unit.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {

  final String name;
  final IconData iconLocation;
  final List<Unit> units;

  const Category({
    Key key,
    @required this.name,
    @required this.iconLocation,
    @required this.units,
  }) : assert(name != null),
       assert(iconLocation != null),
       super(key: key);

  Widget buildRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(
            iconLocation,
            size: 60.0
          ),
        ),
        Center(
          child: Text(
            this.name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline,
          ),
        )
      ],
    );
  }

  Widget buildInkwell(BuildContext context) {
    return InkWell(
      borderRadius: _borderRadius,
      highlightColor: Colors.teal,
      splashColor: Colors.teal,
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) {
            return ConverterRoute(title: name, units: units);
          }));
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: buildRow(context),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        child: buildInkwell(context),
      ),
    );

  }

}