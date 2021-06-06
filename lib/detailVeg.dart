import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/model/vegetables.dart';

class DetailVeggiesScreen extends StatelessWidget {
  final Vegetables veggies;
  DetailVeggiesScreen({required this.veggies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset(veggies.img),
            Text(veggies.name),
            Text(veggies.price),
            Text(veggies.stock),
            Text(veggies.description),
          ],
        ),
      ),
    );
  }
}
