import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_flutter_app/model/vegetables.dart';

class DetailVeggiesScreen extends StatelessWidget {
  final Vegetables veggies;
  DetailVeggiesScreen({required this.veggies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(veggies.name),
        backgroundColor: Color(0xFF3db841),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Image.asset(veggies.img),
              ),
              Container(
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.greenAccent,
                  margin: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          veggies.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  FaIcon(
                                    FontAwesomeIcons.moneyBill,
                                    color: Color(0xFF3db841),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      veggies.price,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  FaIcon(
                                    FontAwesomeIcons.boxes,
                                    color: Color(0xFF3db841),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      veggies.stock,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 20,
                        thickness: 1,
                        indent: 16,
                        endIndent: 16,
                        color: Color(0xFF3db841),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          left: 16.0,
                          right: 16.0,
                          bottom: 16.0,
                        ),
                        child: Text(
                          veggies.description,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.greenAccent,
                  margin: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Mau beli berapa?',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      CountBuy(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CountBuy extends StatefulWidget {
  @override
  _CountBuyState createState() => _CountBuyState();
}

class _CountBuyState extends State<CountBuy> {
  int _intCount = 0;

  void _countAdd() {
    setState(() {
      _intCount++;
    });
  }

  void _countMin() {
    setState(() {
      if (_intCount != 0) {
        _intCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Color(0xFF3db841),
                ),
                child: IconButton(
                  onPressed: () {
                    _countMin();
                    if (_intCount == 0) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Pembelianmu kosong loh',
                            textAlign: TextAlign.center,
                          ),
                          duration: const Duration(milliseconds: 1500),
                          width: 280.0,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Mengurangi pembelian menjadi $_intCount',
                            textAlign: TextAlign.center,
                          ),
                          duration: const Duration(milliseconds: 1500),
                          width: 280.0,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      );
                    }
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.minus,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                '$_intCount',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Color(0xFF3db841),
                ),
                child: IconButton(
                  onPressed: () {
                    _countAdd();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Pembelianmu bertambah menjadi $_intCount',
                          textAlign: TextAlign.center,
                        ),
                        duration: const Duration(milliseconds: 1500),
                        width: 280.0,
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
