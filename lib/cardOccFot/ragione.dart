import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class ragione extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300.0),
        child : AppBar(
            leading: IconButton(icon: Icon(Icons.clear,size: 35,),onPressed: (){Navigator.pop(context);},),
            flexibleSpace: Image(
              image: AssetImage('assets/images/OccFotograf/ragione.jpg'
                  ''),
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
                child: Text('Palazzo della\nRagione',style: TextStyle(fontSize: 30),
                ), ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: IconButton(
                  icon: Icon(Icons.favorite_border),
                  iconSize: 30,
                  onPressed: () {},),),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 150),
            child: Text("Anagni",style: TextStyle(fontSize: 22, fontFamily: "Times New Roman")),
          ),
          Text("Il palazzo della Ragione è una delle poche e fra le più antiche strutture pubbliche comunali esistenti nel Lazio meridionale." ,style: TextStyle(fontSize: 20),),
          SizedBox(
            height: 10,
          ),
          Text("Orari:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("Tutti i giorni dalle 08:00 alle 18:00",style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 10,
          ),
          Text("Come arrivare?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("Partenza: centro di Anagni",style: TextStyle(fontSize: 18)),
          Text("Arrivo: Palazzo della Ragione",style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 20,
          ),
          Image(
            image: AssetImage('assets/images/OccFotograf/comearrivareanagni.JPG'),
          ),
        ],
      ),

    );

  }
}