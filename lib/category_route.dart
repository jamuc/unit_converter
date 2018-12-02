import 'package:flutter/material.dart';
import 'package:unit_converter/unit.dart';
import 'category.dart';

const _categoryName = "Cake";

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String> [
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  List<Unit> _retrieveCategoryUnits(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for(var i = 0; i < _categoryNames.length; i++) {
      categories.add(
        Category(
          name: _categoryNames[i],
          iconLocation: Icons.cake,
          units: _retrieveCategoryUnits(_categoryNames[i]),
        )
      );
    }

    final listView = Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => categories[index],
        itemCount: categories.length,
      )
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("Unit Converter App"),
        ),
        body: listView,
      );
  }
}