import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_flutter_app/fruits.dart';
import 'package:groceries_flutter_app/vegies.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.black26),
            tabs: [
              Tab(
                icon: FaIcon(FontAwesomeIcons.lemon),
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.carrot),
              ),
            ],
          ),
          title: Text('Fruits & Veggies'),
          backgroundColor: Color(0xFF3db841),
        ),
        body: TabBarView(
          children: [
            FruitsScreen(),
            VeggiesScreen(),
          ],
        ),
      ),
    );
  }
}
