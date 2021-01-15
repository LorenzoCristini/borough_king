import 'dart:math';
// Liberare lo stack ogni volta che si ritorna alla home (?)
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import "package:borough_king/widgets/search.dart";
import "package:borough_king/widgets/occasioni_fotografiche.dart";
import "package:borough_king/cardHP/villaggioNatale.dart";
import "package:borough_king/cardHP/mercatiniSubiaco.dart";
import "package:borough_king/cardHP/neveAnagni.dart";
import "package:borough_king/cardHP/presepCal.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Borough King",
      home: HomePage(),

    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Borough King", style: TextStyle(color: Colors.black)),
          backgroundColor: Color(0xff90EE90),
          iconTheme: IconThemeData(color: Colors.black)),
      body: ListView(

        children: <Widget>[
          Container(
            // Questo container serve per creare la barra di ricerca
            margin: EdgeInsets.all(8),
            alignment: Alignment.center,
            //width: 320,
            height: 120,
            //Il bottone è di tipo Raised non so che significa però è bello
            child: ButtonTheme(   minWidth: 200.0,   height: 70.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => search()),
                );
              },
              textColor: Colors.black,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.fromLTRB(40, 4, 4, 4),
                      child: Text(
                        'Dove vuoi andare?',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ),
                    //Utilizzo i padding per spostare a mio piacimento le icone e il testo
                    Padding(
                      padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ),
          Center(
              child: Text(
            "Inverno nei borghi del Lazio",
            style: TextStyle(fontSize : 28, fontFamily: 'Georgia',  ),

          )),
          //Ci metto una box invisibile per dare spazio
          SizedBox(
            height: 25,
          ),
          //Ora metto il nome delle attrazioni per riga e le sposto per centrarle rispetto all'immagine
          GestureDetector(
            onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => villaggio()),
            );
            },
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            child: Column(
              children: [
                ListTile(
                  title: Text('Villaggio di Babbo Natale',style: TextStyle(fontSize: 25),),
                  subtitle: Text(
                    'Tolfa',
                    style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 18, fontFamily: 'Times New Roman',),
                  ),
                ),
                Image.asset('assets/images/villaggioTolfa.jpg'),
              ],
            ),
          ),
          ),
          SizedBox(
            height: 25,
          ),
            GestureDetector(
                    onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => presepe()),
            );
            },
            child: Card(
            clipBehavior: Clip.antiAlias,
              elevation: 5,
            child: Column(
              children: [
                ListTile(
                  title: Text('Presepe vivente',style: TextStyle(fontSize: 25),),
                  subtitle: Text(
                    'Calcata',
                    style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 18, fontFamily: 'Times New Roman',),
                  ),
                ),

                Image.asset('assets/images/presepeCalcata.jpg'),
              ],
            ),
          ),
            ),
          SizedBox(
            height: 25,
          ),
                    GestureDetector(
                    onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => neve()),
            );
            },
            child: Card(
              elevation: 5,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: Text('Paesaggi innevati',style: TextStyle(fontSize: 25),),
                  subtitle: Text(
                    'Anagni',
                    style: TextStyle(color: Colors.black.withOpacity(0.8),  fontSize: 18, fontFamily: 'Times New Roman',),
                  ),
                ),

                Image.asset('assets/images/neveAnagni.jpg'),
              ],
            ),
          ),
            ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => mercatini()),
            );
            },
            child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            child: Column(
              children: [
                ListTile(
                  title: Text('Mercatini Tipici',style: TextStyle(fontSize: 25),),
                  subtitle: Text(
                    'Subiaco',
                    style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 18, fontFamily: 'Times New Roman',),
                  ),
                ),

                Image.asset('assets/images/mercatiniSubiaco.jpg'),
              ],
            ),
          ),
            ),
          SizedBox(
            height: 30,
          ),
        ],
      ),

      //Il drawer è il menù hamburger
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: new Text(
              'Ciao viaggiatore!',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            //Un modo per inserire un'immagine
            decoration: BoxDecoration(
                color: Color(0xff90EE90),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.kym-cdn.com/photos/images/newsfeed/001/878/329/dfa.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profilo"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => notImplemented()),
              );
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Impostazioni"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => notImplemented()),
              );
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.emoji_events),
            title: Text("Obiettivo app"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => notImplemented()),
              );
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 15,
        unselectedFontSize: 15,
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
            label: 'OccasioniFotografiche',
            icon: Icon(Icons.panorama),
          ),
        ],
      ),
    );
  }
}

//Ogni pagina è un Widget, quindi creo un widget per la pagina "Non implementata"
class notImplemented extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Borough King", style: TextStyle(color: Colors.black)),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Ops...",
              textAlign: TextAlign.center,
              textScaleFactor: 3,
            ),
          ),
          Center(
            child: Text(
              "Funzione",
              textAlign: TextAlign.center,
              textScaleFactor: 3,
            ),
          ),
          Center(
            child: Text("non implementata",
                textAlign: TextAlign.center, textScaleFactor: 3),
          ),
          Icon(Icons.sentiment_very_dissatisfied, size: 70)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        // Non è possibile avere nessun bottone selezionato. Quindi l'unico modo è renderlo opaco come gli altri
        selectedItemColor: Colors.black.withOpacity(.60),
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 15,
        unselectedFontSize: 15,
        onTap: (value) {
          // Respond to item press.
          //Ogni bottone ha un indice e gli indici partono da 0 quindi il primo è la home e gli altri a seguire
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            if (value == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => preferiti()),
              );
            } else if (value == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => notImplemented()),
              );
            }
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
            label: 'BorghiPerImmagini',
            icon: Icon(Icons.panorama),
          ),
        ],
      ),
    );
  }
}

//Altri modi utili per fare un rettangolo, bottone ecc.
/*
          GestureDetector(
            onTap: () {},
          child: Container(
            height: 50.0,
            width: 300.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
            borderRadius : BorderRadius.all(Radius.circular(10.0)),
          ) ,
           child: Text("Dove vuoi andare?",textScaleFactor: 2,textAlign: TextAlign.center),

           ),
          ),*/
/*FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            onPressed: () => {},
            color: Color(0xff90EE90),
            child: Row( // Replace with a Row for horizontal icon + text
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Dove vuoi andare?"),
                Icon(Icons.search)
              ],
            ),
          ),*/
