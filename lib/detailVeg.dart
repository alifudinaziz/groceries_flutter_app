import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/model/vegetables.dart';

class DetailVeggiesScreen extends StatelessWidget {
  final Vegetables veggies;
  DetailVeggiesScreen({required this.veggies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(veggies.name),
      ),
    );
  }
}
