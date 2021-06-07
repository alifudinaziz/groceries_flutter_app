import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruits Veggies',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
