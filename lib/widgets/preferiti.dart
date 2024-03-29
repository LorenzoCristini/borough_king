import 'dart:math';
import 'dart:ui';
import 'package:borough_king/main.dart';
import 'package:borough_king/widgets/occasioni_fotografiche.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:borough_king/widgets/search.dart';
import 'package:borough_king/widgets/Preferiti/preferitiTolfa.dart';
import 'package:borough_king/widgets/Preferiti/preferitiAnagni.dart';
import 'package:borough_king/widgets/Preferiti/preferitiSubiaco.dart';
import 'package:borough_king/widgets/Preferiti/preferitiBracciano.dart';
import 'package:borough_king/widgets/Preferiti/preferitiCalcata.dart';

List<String> borghi = [];

class ListDisplay extends StatefulWidget {
  @override
  State createState() => new DynamicList();
}
class DynamicList extends State<ListDisplay> {
  @override
  Widget build (BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10),
          child:Text("Per non dimenticare dove hai lasciato il ❤",
              style: TextStyle(fontSize: 23,fontFamily: "Times New Roman"),
              textAlign: TextAlign.center),
        ),

         Expanded(
            child: ListView.builder
              (
                itemCount: borghi.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      ListTile( title: Text(borghi[index],style: TextStyle(fontSize: 20),),
                      onTap: () {
                        if (borghi[index] == 'Tolfa') {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => preferitiTolfa()));
                        }
                        else if (borghi[index] == 'Subiaco') {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => preferitiSubiaco()));
                        }
                        else if (borghi[index] == 'Bracciano') {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => preferitiBracciano()));
                        }
                        else if (borghi[index] == 'Anagni') {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => preferitiAnagni()));
                        }
                        else if (borghi[index] == 'Calcata') {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => preferitiCalcata()));
                        }
                      },),
                      Divider(thickness: 1,),
                    ]
                  );
                }
            ),
        ),
      ],
    );

  }
}
class preferiti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("I miei preferiti", style: TextStyle(color: Colors.black)),
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
    ],),

      body: ListDisplay(),
    bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 1,
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
      ),
    );

  }
}
