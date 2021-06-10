import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/detailVeg.dart';
import 'package:groceries_flutter_app/model/vegetables.dart';

class VeggiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return VeggiesList();
          } else if (constraints.maxWidth <= 1200) {
            return VeggiesGrid(
              countGrid: 2,
            );
          } else {
            return VeggiesGrid(
              countGrid: 4,
            );
          }
        },
      ),
    );
  }
}

//
// sayur.name
// sayur.price
// sayur.stock

class VeggiesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Vegetables sayur = veggiesList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailVeggiesScreen(veggies: sayur);
            }));
          },
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          child: Image.asset(sayur.img),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                sayur.name,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 24.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Harga: ',
                                          style: TextStyle(fontSize: 14.0),
                                        ),
                                        Text(
                                          sayur.price,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Stok: ',
                                          style: TextStyle(fontSize: 14.0),
                                        ),
                                        Text(
                                          sayur.stock,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Container(
                                color: Color(0xFFf5a9a9),
                                child: LoveIconButton(
                                  veggie: sayur,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: veggiesList.length,
    );
  }
}

class VeggiesGrid extends StatefulWidget {
  final int countGrid;
  VeggiesGrid({required this.countGrid});

  @override
  _VeggiesGridState createState() => _VeggiesGridState();
}

class _VeggiesGridState extends State<VeggiesGrid> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: widget.countGrid,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: veggiesList.map((veggie) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailVeggiesScreen(
                  veggies: veggie,
                );
              }));
            },
            child: Card(
              elevation: 4,
              shadowColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            veggie.img,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Container(
                            color: Color(0xFFf5a9a9),
                            child: LoveIconButton(
                              veggie: veggie,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        veggie.name,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Harga: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Text(
                                veggie.price,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Stok: ',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Text(
                                veggie.stock,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class LoveIconButton extends StatefulWidget {
  final Vegetables veggie;
  LoveIconButton({required this.veggie});

  @override
  _LoveIconButtonState createState() => _LoveIconButtonState();
}

class _LoveIconButtonState extends State<LoveIconButton> {
  bool love = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (love = !love) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  '${widget.veggie.name} masuk sayur Favorit',
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
                  'Yah dihapus',
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
        });
      },
      icon: Icon(
        love ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
    );
  }
}
