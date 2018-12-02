import 'package:flutter/material.dart';
import 'category.dart';

const _categoryName = "Cake";

main(List<String> args) {
  return runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Unit Converter App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Unit Converter App"),
        ),
        body: Center(
          child: Category(
            name: _categoryName,
            iconLocation: Icons.cake,
          ),
        ),
      ),
    );
  }

}