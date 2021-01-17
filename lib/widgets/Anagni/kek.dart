import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import "package:borough_king/widgets/occasioni_fotografiche.dart";
import 'package:borough_king/widgets/search.dart';

class Info_Anagni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anagni", style: TextStyle(color: Colors.black)),
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
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Text(
            'Descrizione',
            style: TextStyle(fontSize: 30, fontFamily: "Times New Roman"),
          ),
          Text(
            "Anagni è un comune italiano di 21 135 abitanti "
                "della provincia di Frosinone nel Lazio. "
                "È nota come la città dei Papi, per aver dato i natali a quattro pontefici "
                "(Innocenzo III, Alessandro IV, Gregorio IX e Bonifacio VIII) e per essere stata a lungo residenza e sede papale. "
                "In particolare il nome di Anagni è legato alle vicende di papa Bonifacio VIII e all'episodio noto come lo schiaffo di Anagni.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 50,
          ),

          Text("Numeri Utili ☎️",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text("Centralino del Comune",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("0775 7301",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Fax del Comune",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("0775 730433",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Polizia Municipale",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(
              "0775 726901",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Farmacia Città dei Papi",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Via Anticolana 29-29a-29b,    Tel: 0775 768003",
              style: TextStyle(fontSize: 18)),
        ],
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