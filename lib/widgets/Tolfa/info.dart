import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import "package:borough_king/widgets/occasioni_fotografiche.dart";
import 'package:borough_king/widgets/search.dart';

class Info_Tolfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tolfa", style: TextStyle(color: Colors.black)),
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
            "Tolfa è un comune italiano di 4 924 abitanti della città metropolitana di Roma Capitale nel Lazio."
                "Il termine Tolfa ha origine incerta: potrebbe derivare da 'Tulphae', dalla radice tol- (sollevare), "
                "riferito alla sua posizione geografica; oppure, secondo un'altra ipotesi, "
            "potrebbe riferirsi al nome di un principe longobardo, forse Agilulfo o Ataulfo.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 50,
          ),
          Text("Numeri Utili ☎️",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text("Carabinieri, Stazione di Tolfa",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Viale d’Italia, 146         -Tel. 0766.92004",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Corpo Forestale dello Stato",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Viale d’Italia, 146          -Tel. 0766.949000",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Vigili Urbani",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(
              "Piazza Vittorio Veneto, 12 Secondo Piano             -Tel. 0766.9390226",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Vigili del Fuoco Civitavecchia",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Piazza di Porta Tarquinia 3,   -Tel: 0766 23333",
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