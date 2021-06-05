import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(icon: FaIcon(FontAwesomeIcons.lemon)),
              Tab(icon: FaIcon(FontAwesomeIcons.carrot)),
            ]),
            title: Text('Fruits & Veggies'),
          ),
          body: TabBarView(children: [
            Text('Fruits'),
            Text('Veggies'),
          ]),
        ));
  }
}
