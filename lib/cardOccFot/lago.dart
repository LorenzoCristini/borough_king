import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class lago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(230.0),
        child: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.clear,
                size: 35,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            flexibleSpace: Image(
              image: AssetImage('assets/images/OccFotograf/lago.jpg'
                  ''),
              fit: BoxFit.fill,
            ),
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.white)),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 150),
                child: Text(
                  'Lago',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(90, 0, 0, 0),
                child: IconButton(
                  icon: Icon(Icons.favorite_border),
                  iconSize: 30,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 150),
            child: Text("Bracciano",
                style: TextStyle(fontSize: 22, fontFamily: "Times New Roman")),
          ),
          Text(
            "La veduta dal lago di widgets.Bracciano è uno dei panorami più meravigliosi del mondo!",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Orari:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Tutti i giorni 24 ore su 24", style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 10,
          ),
          Text("Come arrivare?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Partenza: stazione di Bracciano",
              style: TextStyle(fontSize: 18)),
          Text("Arrivo: Lago", style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 20,
          ),
          Image(
            image:
                AssetImage('assets/images/OccFotograf/comearrivarebracc.JPG'),
          ),
        ],
      ),
    );
  }
}
