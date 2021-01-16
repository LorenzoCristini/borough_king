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

class ExpandedWidget extends StatefulWidget {
  @override
 Lista_Attivita createState() => Lista_Attivita();
}

class Lista_Attivita extends State<ExpandedWidget> {
  void initState(){
    super.initState();
  }
  final List<String> images = [
    'assets/images/OccFotograf/rocca.jpg',
    'assets/images/OccFotograf/ragione.jpg'
  ];

  final List<String> musei = ['Museo civico', 'Museo archeologico'];
  final List<StatelessWidget> classi = [notImplemented(), notImplemented()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Musei", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xff90EE90),
        iconTheme: IconThemeData(color: Colors.black),
      ),

      body: /*GridView.builder(
            itemCount: 2,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 8.0 / 10.0,
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                        padding: EdgeInsets.all(5),
                        child: Card(
                            elevation: 5,
                            semanticContainer: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Column(children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(images[index]),
                                        fit: BoxFit.fill),
                                            ),
                                          ),
                                   ),
                          Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                musei[index],
                                style: TextStyle(fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ))
                                ])
                              )
                            );}
              ),
*/
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
        Padding(
        padding: EdgeInsets.all(5),
          child: Card(
            elevation: 5,
            semanticContainer: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(children: <Widget>[
              Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage( 'assets/images/OccFotograf/rocca.jpg'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
            ])
            )),
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
      ),
    );
  }
}

