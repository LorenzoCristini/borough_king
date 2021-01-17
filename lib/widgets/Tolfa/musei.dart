import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import "package:borough_king/widgets/occasioni_fotografiche.dart";
import "package:flutter/src/rendering/box.dart";
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';
import 'package:borough_king/main.dart';
//import 'package:folding_cell/folding_cell.dart';

class ListaAttivita extends StatelessWidget {
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
          color: Colors.green,
          child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                /*Container(
                  child: SimpleFoldingCell(
                      frontWidget: FrontWidget(),
                      innerTopWidget:InnerTopWidget(),
                      innerBottomWidget: InnerBottomWidget,
                      cellSize: Size(MediaQuery.of(context).size.width,175),
                      padding: EdgeInsets.all(10.0)
                  ),
                )*/

              ]
          )
      ),

      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black,
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
}



Container FrontWidget(){
  return Container(
      color: Colors.deepOrange,
      alignment: Alignment.center,
      child: Row(children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),

            ),
          ),
        ),
      ])
  );
}