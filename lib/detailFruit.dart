import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/model/fruits.dart';

class DetailFruitScreen extends StatelessWidget {
  final Fruits fruit;
  DetailFruitScreen({required this.fruit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(fruit.name),
            Text(fruit.description),
          ],
        ),
      ),
    );
  }
}
