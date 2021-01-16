import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class rocca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250.0),
        child : AppBar(
            leading: IconButton(icon: Icon(Icons.clear,size: 35,),onPressed: (){Navigator.pop(context);},),
            flexibleSpace: Image(
              image: AssetImage('assets/images/OccFotograf/rocca.jpg'),
              fit: BoxFit.fill,
            ),
            backgroundColor: Colors.transparent,

            iconTheme: IconThemeData(color: Colors.white)),
      ),
      body:
      ListView(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
            Padding(padding: EdgeInsets.only(right:150
            ),
              child: Text('La Rocca',style: TextStyle(fontSize: 30),
            ), ),
            Padding(padding: EdgeInsets.fromLTRB(50,0,0,0
            ),
            child: IconButton(
            icon: Icon(Icons.favorite_border),
            iconSize: 30,
            onPressed: () {},),),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 150),
            child: Text("Tolfa",style: TextStyle(fontSize: 22, fontFamily: "Times New Roman")),
          ),
          Text("La Rocca di Tolfa è il posto perfetto per scatti memorabili!" ,style: TextStyle(fontSize: 20),),
          SizedBox(
            height: 10,
          ),
          Text("Orari:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("Tutti i giorni dalle 08:00 alle 21:00",style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 10,
          ),
          Text("Come arrivare?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("Partenza: centro di Tolfa",style: TextStyle(fontSize: 18)),
          Text("Arrivo: La Rocca",style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 20,
          ),
          Image(
            image: AssetImage('assets/images/OccFotograf/comearrivaretolfa.JPG'),
          ),
        ],
      ),

    );

  }
}