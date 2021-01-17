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

class Info_Calcata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcata", style: TextStyle(color: Colors.black)),
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
            "Cuore dell’Agro Falisco, lo scenario offerto dalla Valle del Treja,"
                " in particolare nel punto in cui sorge il borgo di Calcata, è considerato uno dei più incantevoli paesaggi laziali: "
                "la folta e impenetrabile vegetazione, "
                "con i suoi colori sempre cangianti al mutare delle stagioni, ammanta i caldi toni rossi e marroni delle rocce tufacee, che formano alte pareti, "
                "pinnacoli, gole e tagliate. "
                "Qui, su uno sperone proteso nel vuoto, si erge il piccolo borgo medievale che, come una penisola in un mare di smeraldo, "
                "rapisce lo spettatore e lo proietta in un’epoca indefinita, ove alle suggestioni ispirate dalla natura "
                "si aggiungono quelle di un medioevo magico e arcano.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 50,
          ),
          Text("Numeri Utili ☎️",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text("Comune",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Piazza Risorgimento 3, Tel: 0761 587021 ",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Farmacia Bassanelli Daria",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("1, Piazza Risorgimento, Tel: 0761587296",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Poste Italiane",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(
              "15, Via Lazio, Tel: 0761 587770",
              style: TextStyle(fontSize: 18)),
          Divider(
            height: 15,
            thickness: 5,
          ),
          Text("Banca di Roma S.P.A",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("12, Piazza Giovanni XXIII, Tel: 06 9049828",
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