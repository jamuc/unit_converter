import 'package:flutter/material.dart';
import 'category_route.dart';

main(List<String> args) {
  return runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Unit Converter App",
      debugShowCheckedModeBanner: false,
      home: CategoryRoute(),
    );
  }

}