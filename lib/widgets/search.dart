import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Ricerca", style: TextStyle(color: Colors.black)),
          backgroundColor: Color(0xff90EE90),
          iconTheme: IconThemeData(color: Colors.black)),

      bottomNavigationBar: BottomNavigationBar(
        // Serve per inserire la barra inferiore
        currentIndex: 0,
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
              MaterialPageRoute(builder: (context) => search()),
            );
          } else if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => notImplemented()),
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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            List<String> borghi = ["Tolfa", "Anagni", "Subiaco", "Bracciano", "Calcata"];
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

              children: <Widget>[
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.fromLTRB(40, 4, 4, 4),
                  child: Text(
                    'Inserisci borgo',
                    style: TextStyle(fontSize: 25, color: Colors.black12),
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
      Container(
            child: Text("Consigliati",style : TextStyle(fontSize : 20)),
              padding: EdgeInsets.only(right: 250),
      ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 300.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[

                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 5,
                    child: Column(

                      children: [
                        Image.asset('assets/images/mercatiniSubiaco.jpg',fit: BoxFit.fill,),
                      ],
                    ),
                  ),
                ],
              ),
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
          query="";
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
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text("pog"),
      ),
    );
  }
  final List<String> listExample;
  Search(this.listExample);
  List<String> recentList= ['Qui vicino','Tolfa', 'Subiaco'];
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestionList = [];
    String selectedResult = '';
    query.isEmpty
        ? suggestionList = recentList
        : suggestionList.addAll(listExample.where(
          (element) => element.contains(query),
    ));
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.watch_later_outlined),
          title: Text(
            suggestionList[index],
          ),
          onTap: () {
            selectedResult = suggestionList[index];
            showResults(context);
          },
        );
      },
    );
  }
}

