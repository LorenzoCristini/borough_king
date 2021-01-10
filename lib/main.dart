import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";

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
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title : Text("Borough King",style: TextStyle(color: Colors.black)),backgroundColor: Color(0xff90EE90),iconTheme: IconThemeData(color: Colors.black)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
          Container(
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            width: 300,
              height: 120,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                onPressed: (){
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context) => notImplemented()),
                  );
                },
                textColor: Colors.black,
                color: Colors.white,
                child: Padding(
                padding: EdgeInsets.fromLTRB(0,0,0,0),
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
                child: Text('Dove vuoi andare?',
                style: TextStyle(fontSize: 19,color: Colors.black),),
                ),

                Padding(
                padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                child: Icon(
                Icons.search,
                color:Colors.black,
                size: 25,
                ),
                ),
                ],
            ),
            ),
            ),
          ),
          Center(child: Text("Inverno nei borghi del Lazio",textScaleFactor: 2,)),
          SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(child: Text("Villaggio di Babbo Natale a Tolfa",style: TextStyle(fontSize: 15),)),
                Center(child: Text ("Presepe vivente a Calcata",style: TextStyle(fontSize: 15),))
              ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Color(0xff90EE90),
                    image: DecorationImage(
                      image: AssetImage('assets/images/villaggioTolfa.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Color(0xff90EE90),
                    image: DecorationImage(
                      image: AssetImage('assets/images/presepeCalcata.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),


            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(child: Text("Neve ad Anagni",style: TextStyle(fontSize: 15),)),
              Center(child: Text ("Mercatini Natale a Subiaco",style: TextStyle(fontSize: 15),))
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Color(0xff90EE90),
                    image: DecorationImage(
                      image: AssetImage('assets/images/neveAnagni.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Color(0xff90EE90),
                    image: DecorationImage(
                      image: AssetImage('assets/images/mercatiniSubiaco.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),


            ],
          )

        ],
      ),

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
                decoration: BoxDecoration(
                  color: Color(0xff90EE90),
                  image: DecorationImage(
                    image: NetworkImage('https://i.kym-cdn.com/photos/images/newsfeed/001/878/329/dfa.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profilo"),
              onTap: (){
                Navigator.push(
                  context,MaterialPageRoute(builder: (context) => notImplemented()),
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
              onTap: (){
                Navigator.push(
                  context,MaterialPageRoute(builder: (context) => notImplemented()),
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
              onTap: (){
                Navigator.push(
                  context,MaterialPageRoute(builder: (context) => notImplemented()),
                );
              },
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
          ],
        )
      ),
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
          if(value == 0){
            Navigator.push(
              context,MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
          else if(value > 0){
            Navigator.push(
              context,MaterialPageRoute(builder: (context) => notImplemented()),
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
            label: 'BorghiPerImmagini',
            icon: Icon(Icons.panorama),
          ),

        ],
      ),
    );
  }
}

class notImplemented extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text("Borough King",style: TextStyle(color: Colors.black)),backgroundColor: Color(0xff90EE90),iconTheme: IconThemeData(color: Colors.black),actions: <Widget>[IconButton(icon: Icon(Icons.search,color: Colors.black,size: 30,),onPressed: (){},)],),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text("Ops...",textAlign: TextAlign.center,textScaleFactor: 3,),
        ),
        Center(
          child: Text("Funzione",textAlign: TextAlign.center,textScaleFactor: 3,),
        ),
        Center(
          child: Text("non implementata",textAlign: TextAlign.center,textScaleFactor: 3),
        ),
        Icon(
          Icons.sentiment_very_dissatisfied,
          size: 70
        )

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
          if(value == 0){
            Navigator.push(
              context,MaterialPageRoute(builder: (context) => HomePage()),
            );
            if(value > 0){
              Navigator.push(
                context,MaterialPageRoute(builder: (context) => notImplemented()),
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