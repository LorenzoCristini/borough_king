import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import "package:borough_king/widgets/occasioni_fotografiche.dart";
import 'package:folding_cell/folding_cell.dart';
import 'package:borough_king/Icons/app_icons.dart';

class Musei extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Musei", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xff90EE90),
        iconTheme: IconThemeData(color: Colors.black),
      ),

      body: Container(

          child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _foldingCellKey?.currentState?.toggleFold(),
                  child: Container(
                    child: SimpleFoldingCell.create(
                        key: _foldingCellKey,
                        frontWidget: FrontWidget(),
                        innerWidget: InnerWidget(),
                        cellSize: Size(MediaQuery
                            .of(context)
                            .size
                            .width, 175),
                        padding: EdgeInsets.all(10.0)
                    ),
                  ),),

              ]
          )
      ),

      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black.withOpacity(.60),
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 13.5,
        unselectedFontSize: 13.5,
        onTap: (value) {
          // Respond to item press.
          //Ogni bottone ha un indice e gli indici partono da 0 quindi il primo è la home e gli altri a seguire
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => preferiti()),
            );
          } else if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => occasioniFotografiche()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Preferiti',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: '   Occasioni\n Fotografiche',
            icon: Icon(Icons.panorama),
          ),
        ],
      ),);

  }

  Widget FrontWidget() {
    return Container(
        color: Color(0xFFecf2f9),
        alignment: Alignment.center,

        child: Row(children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage('assets/images/Tolfa/museoCivico.jpg'),
                    fit: BoxFit.cover),

              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xFFecf2f9),
              ),
              child: Column(children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(child: Text(
                      "Museo Civico", style: TextStyle(fontSize: 25),))
                ),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(right: 10),
                              child: Icon(Icons.room)),
                          Center(child: Text(
                            "Largo 15 Marzo\nTolfa RM", style: TextStyle(
                              fontSize: 20),))
                        ])
                )

              ]),
            ),
          ),
        ])
    );

  }

  Widget InnerWidget() {
    return Container(
        color: Color(0xFFecf2f9),
        padding: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
                children: <Widget>[
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Museo Civico", style: TextStyle(fontSize: 25),),
                        Padding(padding: EdgeInsets.only(left: 160  ),
                            child: IconButton(onPressed:() {/*Aggiungere cambio preferiti*/},icon:Icon(Icons.favorite_border,size: 30,),),),
                      ])),
                  Align(alignment: Alignment.topLeft,
                      child: Text("Tolfa", style: TextStyle(fontSize: 20),)),
                  Row(children: <Widget>[
                    Padding(padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.room)),
                    Center(child: Text("Largo 15 Marzo\nTolfa RM",
                      style: TextStyle(fontSize: 20),))
                  ]),
                  Align(alignment: Alignment.topLeft,
                      child: Text(
                        "Descrizione", style: TextStyle(fontSize: 18),)),
                  Align(alignment: Alignment.topLeft,
                      child: Text("Descrizione epica finita male",
                        style: TextStyle(fontSize: 18),)),
                  SizedBox(height: 10,),
                  Align(alignment: Alignment.topLeft,
                      child: Text("Orario", style: TextStyle(fontSize: 18),)),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Lun-ven", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 50),
                            child: Text(
                              "9:00-18:00", style: TextStyle(fontSize: 18),)),
                      ])),
                  SizedBox(height: 20,),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Costo", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 150),
                            child: Icon(Icons.euro, size: 17,)),
                      ])),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Tempo", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 150),
                            child: Text(
                              "1h-1.5h", style: TextStyle(fontSize: 18),)),
                      ])),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Fatica", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 150),
                            child: Icon(MyFlutterApp.droplet, size: 17,)),
                      ])),
                ]),
          ),

        ],)
    );
  }
}
