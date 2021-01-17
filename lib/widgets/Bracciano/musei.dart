import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import "package:borough_king/widgets/occasioni_fotografiche.dart";
import 'package:folding_cell/folding_cell.dart';
import 'package:borough_king/widgets/search.dart';

class MuseiBr extends StatelessWidget {
  final _foldingCellKey1 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey2 = GlobalKey<SimpleFoldingCellState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Musei", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xff90EE90),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              List<String> borghi = [
                "Tolfa",
                "Anagni",
                "Subiaco",
                "Bracciano",
                "Calcata"
              ];
              showSearch(context: context, delegate: Search(borghi));
            },
          )
        ],
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
                      image: AssetImage('assets/images/Bracciano/mus1.JPG'),
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
                        "Museo Civico", style: TextStyle(fontSize: 23,fontFamily: "Times New Roman"),))
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(right: 10),
                                child: Icon(Icons.room)),
                            Center(child: Text(
                              "Via Umberto I\nBracciano RM", style: TextStyle(
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
                      image: AssetImage('assets/images/Bracciano/mus2.jpg'),
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
                        "Museo storico aeronautica militare", style: TextStyle(fontSize: 20,fontFamily: "Times New Roman"),))
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(right: 10),
                                child: Icon(Icons.room)),
                            Center(child: Text(
                              "Strada Circumlacuale \n Bracciano RM", style: TextStyle(
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
                        Text("Museo storico aeronautica\nmilitare", style: TextStyle(fontSize: 25),),
                        Padding(padding: EdgeInsets.only(left: 15  ),
                          child: IconButton(onPressed:() {/*Aggiungere cambio preferiti*/},icon:Icon(Icons.favorite_border,size: 30,),),),
                      ])),

                  Row(children: <Widget>[
                    Padding(padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.room)),
                    Center(child: Text("Strada Circumlacuale \n Bracciano RM",
                      style: TextStyle(fontSize: 20),))
                  ]),
                  SizedBox(height: 10,),
                  Align(alignment: Alignment.topLeft,
                      child: Text("​​​Il Museo Storico ha sede nell’Idroscalo di Vigna di Valle, il più antico in Italia.",
                        style: TextStyle(fontSize: 18),)),
                  SizedBox(height: 10,),
                  Align(alignment: Alignment.topLeft,
                      child: Text("Orario", style: TextStyle(fontSize: 18),)),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Lun-ven", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 50),
                            child: Text(
                              "9:00-17:30", style: TextStyle(fontSize: 18),)),
                      ])),
                  SizedBox(height: 20,),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Costo", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 150),
                            child: Text("€€",style: TextStyle(fontSize: 18),)),
                      ])),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Tempo", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 125),
                            child: Text(
                              "45m-1:15h", style: TextStyle(fontSize: 18),)),
                      ])),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Fatica", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 150),
                            child: Text("💧💧💧")),
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
                          Text("Museo Civico", style: TextStyle(fontSize: 25),),
                          Padding(padding: EdgeInsets.only(left: 160  ),
                            child: IconButton(onPressed:() {/*Aggiungere cambio preferiti*/},icon:Icon(Icons.favorite_border,size: 30,),),),
                        ])),

                    Row(children: <Widget>[
                      Padding(padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.room)),
                      Center(child: Text("Via Umberto I\nBracciano RM",
                        style: TextStyle(fontSize: 20),))
                    ]),
                    SizedBox(height: 10,),
                    Align(alignment: Alignment.topLeft,
                        child: Text("Il Museo Civico di Bracciano ha sede all’interno dell’ex convento di Santa Maria Novella",
                          style: TextStyle(fontSize: 18),)),
                    SizedBox(height: 10,),
                    Align(alignment: Alignment.topLeft,
                        child: Text("Orario", style: TextStyle(fontSize: 18),)),
                    Align(alignment: Alignment.topLeft,
                        child: Row(children: <Widget>[
                          Text("Lun-ven", style: TextStyle(fontSize: 18),),
                          Padding(padding: EdgeInsets.only(left: 50),
                              child: Text(
                                "8:00-17:00", style: TextStyle(fontSize: 18),)),
                        ])),
                    SizedBox(height: 20,),
                    Align(alignment: Alignment.topLeft,
                        child: Row(children: <Widget>[
                          Text("Costo", style: TextStyle(fontSize: 18),),
                          Padding(padding: EdgeInsets.only(left: 150),
                              child: Text("€",style: TextStyle(fontSize: 18),)),
                        ])),
                    Align(alignment: Alignment.topLeft,
                        child: Row(children: <Widget>[
                          Text("Tempo", style: TextStyle(fontSize: 18),),
                          Padding(padding: EdgeInsets.only(left: 125),
                              child: Text(
                                "1.5h", style: TextStyle(fontSize: 18),)),
                        ])),
                    Align(alignment: Alignment.topLeft,
                        child: Row(children: <Widget>[
                          Text("Fatica", style: TextStyle(fontSize: 18),),
                          Padding(padding: EdgeInsets.only(left: 150),
                            child: Text("💧"),),
                        ])),
                  ]),
            ),

          ],)
      );
    }

  }
}
