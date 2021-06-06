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
          children: [
            Image.asset(fruit.img),
            Text(fruit.name),
            Text(fruit.price),
            Text(fruit.stock),
            Text(fruit.description),
          ],
        ),
      ),
    );
  }
}
