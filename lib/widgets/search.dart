import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:borough_king/widgets/occasioni_fotografiche.dart';
import 'package:borough_king/widgets/preferiti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:borough_king/widgets/Borghi_Attivita.dart';

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Ricerca", style: TextStyle(color: Colors.black)),
          backgroundColor: Color(0xff90EE90),
          iconTheme: IconThemeData(color: Colors.black)),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              // Questo container serve per creare la barra di ricerca
              margin: EdgeInsets.all(8),
              alignment: Alignment.center,
              //width: 320,
              height: 120,
              //Il bottone è di tipo Raised non so che significa però è bello
              child: ButtonTheme(
                minWidth: 200.0,
                height: 70.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {
                    List<String> borghi = [
                      "Tolfa",
                      "Anagni",
                      "Subiaco",
                      "Bracciano",
                      "Calcata"
                    ];
                    showSearch(context: context, delegate: Search(borghi));
                    /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => notImplemented()),
            );*/
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
                            'Inserisci borgo',
                            style:
                            TextStyle(fontSize: 21, color: Colors.black12),
                          ),
                        ),
                        //Utilizzo i padding per spostare a mio piacimento le icone e il testo
                        Padding(
                          padding: EdgeInsets.fromLTRB(90, 0, 0, 0),
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
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text("Consigliati",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: 'Corbel',
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Borghi_Attivita_Anagni()),
                );
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Anagni',
                        style: TextStyle(fontSize: 25),
                      ),
                      subtitle: Text(
                        'Il borgo del Lazio tra storie e leggende',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Times New Roman'),
                      ),
                    ),
                    Image.asset('assets/images/anagni.jpg'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Borghi_Attivita_Bracciano()),
                );
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Bracciano',
                        style: TextStyle(fontSize: 25),
                      ),
                      subtitle: Text(
                        "Il lago, i vicoli pittoreschi e l'atmosfera medievale",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Times New Roman'),
                      ),
                    ),
                    Image.asset('assets/images/bracciano.jpg'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Borghi_Attivita_Calcata()),
                );
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Calcata',
                        style: TextStyle(fontSize: 25),
                      ),
                      subtitle: Text(
                        'Il borgo magico degli hippie e delle streghe',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Times New Roman'),
                      ),
                    ),
                    Image.asset('assets/images/calcata.jpg'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Borghi_Attivita_Subiaco()),
                );
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Subiaco',
                        style: TextStyle(fontSize: 25),
                      ),
                      subtitle: Text(
                        'Il borgo che ospita la "soglia del Paradiso"',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Times New Roman'),
                      ),
                    ),
                    Image.asset('assets/images/subiaco.jpg'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Borghi_Attivita_Tolfa()),
                );
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Tolfa',
                        style: TextStyle(fontSize: 25),
                      ),
                      subtitle: Text(
                        'Il borgo etrusco ricco di tradizioni',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Times New Roman'),
                      ),
                    ),
                    Image.asset('assets/images/tolfa.jpg'),
                  ],
                ),
              ),
            ),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        // Serve per inserire la barra inferiore
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black.withOpacity(.60),
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

class Search extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  void showResults(BuildContext context) {
    close(context, query);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => notImplemented()),
    );
  }


  @override
  Widget buildResults(BuildContext context) => notImplemented();
  final List<String> listExample;
  Search(this.listExample);

  List<String> recentList = ['Qui vicino', 'Tolfa', 'Subiaco'];

  Widget buildSuggestions(BuildContext context) {
    List<String> suggestionList = [];
    String selectedResult = '';
    query.isEmpty  ? suggestionList = recentList : suggestionList.addAll(listExample.where(
          (element) => element.contains(RegExp('^$query',caseSensitive: false)),
    ));
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: suggestionList[index] == 'Qui vicino'
              ? Icon(Icons.near_me)
              : Icon(Icons.watch_later_outlined),
          title: Text(
            suggestionList[index],
          ),
          trailing: suggestionList[index] == 'Qui vicino'
              ? null
              : IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {},
          ),
          onTap: () {
            selectedResult = suggestionList[index];

            if (selectedResult == 'Tolfa'){Navigator.push(context, MaterialPageRoute(builder: (context) => Borghi_Attivita_Tolfa()));}
            else if (selectedResult == 'Subiaco'){ Navigator.push(context, MaterialPageRoute(builder: (context) => Borghi_Attivita_Subiaco()));}
            else if (selectedResult == 'Bracciano') {}
            else if (selectedResult == 'Anagni') {}
            else if (selectedResult == 'Calcata') {}
            else if (selectedResult == 'Qui vicino') {Navigator.push(context, MaterialPageRoute(builder: (context) => notImplemented()));}
          },
        );
      },
    );
  }
}
