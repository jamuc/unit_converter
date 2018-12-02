import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for(var i = 0; i < _categoryNames.length; i++) {
      categories.add(
        Category(
          name: _categoryNames[i],
          iconLocation: Icons.cake,
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