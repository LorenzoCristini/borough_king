import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import "package:borough_king/widgets/occasioni_fotografiche.dart";
import 'package:folding_cell/folding_cell.dart';
import 'package:borough_king/widgets/search.dart';
import 'package:borough_king/widgets/Preferiti/preferitiBracciano.dart';

class BottegheBr extends StatelessWidget {
  final _foldingCellKey1 = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Botteghe", style: TextStyle(color: Colors.black)),
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
    if (key == _foldingCellKey1){
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
                      image: AssetImage('assets/images/Bracciano/Alimentari Antonelli.jpg'),
                      fit: BoxFit.fill),

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
                        "Alimentari Antonelli", style: TextStyle(fontSize: 21,fontFamily: "Times New Roman"),))
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(right: 10),
                                child: Icon(Icons.room)),
                            Center(child: Text(
                              "Via Principe di Napoli, 114\n Bracciano RM", style: TextStyle(
                                fontSize: 17),))
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
    if( key == _foldingCellKey1){
      return Post();
    }

  }
}

class Post extends StatefulWidget{
  @override
  PostState createState() => new PostState();
}

bool liked = false;
class PostState extends State<Post> {
  _pressed() {
    setState(() {
      liked= !liked;
      cards.contains('Alimentari Antonelli') ? cards.remove('Alimentari Antonelli') : cards.add('Alimentari Antonelli');
      !borghi.contains('Bracciano')  ? borghi.add('Bracciano') : null;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                        Text("Alimentari Antonelli",
                          style: TextStyle(fontSize: 25),),
                        Padding(padding: EdgeInsets.only(left: 45),
                          child: IconButton(icon: Icon(liked ? Icons.favorite : Icons.favorite_border_outlined,
                              color: liked ? Colors.redAccent : Colors.black),
                            iconSize: 30,
                            onPressed: () => _pressed(),
                          ),),
                      ])),
                  Row(children: <Widget>[
                    Padding(padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.room)),
                    Center(child: Text(
                      "Via Principe di Napoli, 114\n Bracciano RM",
                      style: TextStyle(fontSize: 20),))
                  ]),
                  SizedBox(height: 10,),
                  Align(alignment: Alignment.topLeft,
                      child: Text("Negozio di alimentari e specialità locali.",
                        style: TextStyle(fontSize: 18),)),
                  SizedBox(height: 10,),
                  Align(alignment: Alignment.topLeft,
                      child: Text("Orario", style: TextStyle(fontSize: 18),)),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Lun-ven", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 50),
                            child: Text(
                              "8:00-19:30", style: TextStyle(fontSize: 18),)),
                      ])),
                  SizedBox(height: 20,),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Costo", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 150),
                            child: Text("€€", style: TextStyle(fontSize: 18),)),
                      ])),
                  Align(alignment: Alignment.topLeft,
                      child: Row(children: <Widget>[
                        Text("Tempo", style: TextStyle(fontSize: 18),),
                        Padding(padding: EdgeInsets.only(left: 125),
                            child: Text(
                              "10m", style: TextStyle(fontSize: 18),)),
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
  }}
