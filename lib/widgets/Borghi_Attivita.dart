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

class Attivita {
  String nome;
  String foto;

  Attivita({this.nome, this.foto});
}

class Borghi_Attivita extends StatelessWidget {
  final List<Attivita> attivita = [
    Attivita(nome: 'Botteghe', foto: 'store-24px.jpg'),
    Attivita(nome: 'Monumenti e Parchi', foto: 'account_balance-24px.jpg'),
    Attivita(nome: 'Musei', foto: 'museum-24px.jpg'),
    Attivita(nome: 'Occasioni Fotografiche', foto: 'insert_photo-24px.jpg'),
    Attivita(nome: 'Mappa', foto: 'map-24px.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tolfa", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xff90EE90),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: IconButton(
                icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            )),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/tolfa.jpg'),
            ),
            Container(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  onPressed: () {},
                )),
          ],
        ),
        Text(
          'Attività',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 26.0,
            color: Colors.black,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListView.builder(
          itemCount: attivita.length,
          shrinkWrap: true,
          physics: new NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
              child: Card(
                  child: ListTile(
                onTap: () {},
                title: Text(attivita[index].nome),
                leading: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  child: Image.asset(
                      'assets/images/Icons/${attivita[index].foto}'),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Lista_Attivita()));
                  },
                ),
              )),
            );
          },
        )
      ]),
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

class Lista_Attivita extends StatelessWidget {
  final List<String> List_Attivita = [
    'Museo Civico',
    'Museo Civico Archelogico'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Musei a Tolfa", style: TextStyle(color: Colors.black)),
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
      body: ListView.builder(
        itemCount: List_Attivita.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                onTap: () {},
                title: Text(List_Attivita[index]),
                trailing: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {},
                )),
          );
        },
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
