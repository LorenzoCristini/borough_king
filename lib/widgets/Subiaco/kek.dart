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

class Info_Subiaco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subiaco", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xff90EE90),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
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
            "Subiaco è un comune italiano di 8 778 abitanti della città metropolitana di Roma Capitale nel Lazio. "
                "Il nome deriva dal latino sub laqueum, “sotto i laghi”, l’abitato sorge sotto i Simbruina stagna, "
                "i tre laghi artificiali creati dallo sbarramento del corso del fiume Aniene, "
                "sulla cui riva destra l’imperatore Nerone aveva una villa.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 50,
          ),
          Text("Numeri Utili ☎️",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text("Info Turismo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Ufficio Turistico di Subiaco, Tel. 0774 85050",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Comune di Subiaco",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("07748161",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Polizia Municipale",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(
              "3, Largo Campo Resi, Tel: 0774 85145",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Poste Italiane",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("24, Viale Della Repubblica, Tel: 0774 86021",
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