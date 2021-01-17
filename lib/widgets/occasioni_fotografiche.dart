import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import "package:borough_king/cardOccFot/rocca.dart";
import "package:borough_king/cardOccFot/ragione.dart";
import "package:borough_king/cardOccFot/lago.dart";
import "package:borough_king/cardOccFot/scolastica.dart";
import 'package:borough_king/widgets/search.dart';

class occasioniFotografiche extends StatelessWidget {
  final List<String> images = ['assets/images/OccFotograf/rocca.jpg','assets/images/OccFotograf/ragione.jpg','assets/images/OccFotograf/lago.jpg','assets/images/OccFotograf/monastero.jpg'];
  final List<String> names = ['La Rocca','Palazzo della ragione','Lago','Monastero di Santa Scolastica'];
  final List<String> places = ['Tolfa','Anagni','Bracciano','Subiaco'];
  final List<StatelessWidget> classi = [rocca(), ragione() , lago(), scolastica()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Occasioni fotografiche", style: TextStyle(color: Colors.black)),
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

        body: Column(
          children: <Widget>[

            Padding(padding: EdgeInsets.all(10), child:Text("Se sei amante della fotografia non vorrai perderti questi borghi!",style: TextStyle(fontSize: 23,fontFamily: "Times New Roman")),),

        Expanded(child: GridView.builder(

          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 10.0,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => classi[index]));
                },
                child: Padding(
                padding: EdgeInsets.all(5),
                child:   Card(
                  elevation: 5,
                    semanticContainer: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(images[index]),
                                    fit: BoxFit.fill),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              names[index],
                              style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                            )),
                        Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              places[index],
                              style: TextStyle(fontSize: 18.0),
                            )),
                      ],
                    ))));
          },
        ),),
      ],),

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

