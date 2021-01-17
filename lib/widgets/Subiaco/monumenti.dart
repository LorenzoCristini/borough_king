import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import "package:borough_king/widgets/occasioni_fotografiche.dart";
import 'package:folding_cell/folding_cell.dart';

class MonuSubiaco extends StatelessWidget {
  final _foldingCellKey1 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey2 = GlobalKey<SimpleFoldingCellState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Monumenti e Parchi", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xff90EE90),
        iconTheme: IconThemeData(color: Colors.black),
      ),

      body: Container(

          child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _foldingCellKey1?.currentState?.toggleFold(),
                  child: Container(
                    child: SimpleFoldingCell.create(
                        key: _foldingCellKey1,
                        frontWidget: FrontWidget(_foldingCellKey1),
                        innerWidget: InnerWidget(_foldingCellKey1),
                        cellSize: Size(MediaQuery
                            .of(context)
                            .size
                            .width, 175),
                        padding: EdgeInsets.all(10.0)
                    ),
                  ),),
                GestureDetector(
                  onTap: () => _foldingCellKey2?.currentState?.toggleFold(),
                  child: Container(
                    child: SimpleFoldingCell.create(
                        key: _foldingCellKey2,
                        frontWidget: FrontWidget(_foldingCellKey2),
                        innerWidget: InnerWidget(_foldingCellKey2),
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

  Widget FrontWidget(GlobalKey<SimpleFoldingCellState> key) {
    if(key == _foldingCellKey1){
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
                      image: AssetImage('assets/images/Subiaco/ponte.jpg'),
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
                        "Rocca Abbaziale", style: TextStyle(fontSize: 23,fontFamily: "Times New Roman"),))
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(right: 10),
                                child: Icon(Icons.room)),
                            Center(child: Text(
                              "Subiaco", style: TextStyle(
                                fontSize: 18),))
                          ])
                  )

                ]),
              ),
            ),
          ])
      );
    } else if (key == _foldingCellKey2){
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
                      image: AssetImage('assets/images/Subiaco/san.jpg'),
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
                      padding: EdgeInsets.only(left: 50.0),
                      child: Center(child: Text(
                        "Ponte di San    Francesco", style: TextStyle(fontSize: 23,fontFamily: "Times New Roman"),))
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(right: 10),
                                child: Icon(Icons.room)),
                            Center(child: Text(
                              "Aniene\nSubiaco", style: TextStyle(
                                fontSize: 18),))
                          ])
                  )

                ]),
              ),
            ),
          ])
      );
    }

  }

  Widget InnerWidget(GlobalKey<SimpleFoldingCellState> key) {
    if (key == _foldingCellKey2){ return Container(
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
                        Text("Ponte di San Francesco", style: TextStyle(fontSize: 25),),
                        Padding(padding: EdgeInsets.only(left: 50  ),
                          child: IconButton(onPressed:() {/*Aggiungere cambio preferiti*/},icon:Icon(Icons.favorite_border,size: 30,),),),
                      ])),

                  Row(children: <Widget>[
                    Padding(padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.room)),
                    Center(child: Text("Aniene, Subiaco",
                      style: TextStyle(fontSize: 20),))
                  ]),
                  SizedBox(height: 10,),
                  Align(alignment: Alignment.topLeft,
                      child: Text("Altro simbolo della cittadina è il Ponte di San Francesco, un arco medievale ben conservato che domina il corso del fiume Aniene. "
                          "Una campata di quasi 40 metri che regala uno scorcio mozzafiato sul fiume e sulla cittadina.",
                        style: TextStyle(fontSize: 18),)),

                  SizedBox(height: 20,),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Costo", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 150),
                          child: Text("€",style: TextStyle(fontSize: 18),),),
                      ])),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Tempo", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 125),
                            child: Text(
                              "30m-45m", style: TextStyle(fontSize: 16),)),
                      ])),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Fatica", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 150),
                            child: Text("💧")),
                      ])),
                ]),
          ),

        ],)
    );}
    else if( key == _foldingCellKey1){
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
                          Text("Rocca abbaziale", style: TextStyle(fontSize: 25),),
                          Padding(padding: EdgeInsets.only(left: 70),
                            child: IconButton(onPressed:() {/*Aggiungere cambio preferiti*/},icon:Icon(Icons.favorite_border,size: 30,),),),
                        ])),
                    Row(children: <Widget>[
                      Padding(padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.room)),
                      Center(child: Text("Subiaco",
                        style: TextStyle(fontSize: 18),))
                    ]),
                    SizedBox(height: 10,),
                    Align(alignment: Alignment.topLeft,
                        child: Text("La rocca Abbaziale "
                            "fu costruita su una ripida collina per scopi difensivi con fortificazioni, carceri, ed è dotata di una torre di avvistamento ed una chiesa. "
                            "In più, la rocca di Subiaco custodisce pregevoli opere d’arte al suo interno, relative ai secoli XVI e XVIII.",
                          style: TextStyle(fontSize: 16),)),
                    SizedBox(height: 10,),
                    Align(alignment: Alignment.topLeft,
                        child: Text("Orario", style: TextStyle(fontSize: 16),)),
                    Align(alignment: Alignment.topLeft,
                        child: Row(children: <Widget>[
                          Text("Mar-Dom", style: TextStyle(fontSize: 16),),
                          Padding(padding: EdgeInsets.only(left: 50),
                              child: Text(
                                "10:00-19:00", style: TextStyle(fontSize: 16),)),
                        ])),
                    SizedBox(height: 10,),
                    Align(alignment: Alignment.topLeft,
                        child: Row(children: <Widget>[
                          Text("Costo", style: TextStyle(fontSize: 15),),
                          Padding(padding: EdgeInsets.only(left: 150),
                              child: Text("€€",style: TextStyle(fontSize: 16),))
                        ])),
                    Align(alignment: Alignment.topLeft,
                        child: Row(children: <Widget>[
                          Text("Tempo", style: TextStyle(fontSize: 15),),
                          Padding(padding: EdgeInsets.only(left: 125),
                              child: Text(
                                "1h-1.5h", style: TextStyle(fontSize: 16),)),
                        ])),
                    Align(alignment: Alignment.topLeft,
                        child: Row(children: <Widget>[
                          Text("Fatica", style: TextStyle(fontSize: 15),),
                          Padding(padding: EdgeInsets.only(left: 140),
                            child: Text("💧💧"),),
                        ])),
                  ]),
            ),

          ],)
      );
    }

  }
}
