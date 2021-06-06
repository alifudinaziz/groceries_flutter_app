import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/detail.dart';
import 'package:groceries_flutter_app/model/fruits.dart';

class FruitsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Fruits buah = fruitsList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen();
            }));
          },
        );
      },
      itemCount: fruitsList.length,
    );
  }
}
