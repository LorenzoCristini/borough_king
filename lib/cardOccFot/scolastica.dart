import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class scolastica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(260.0),
        child : AppBar(
            leading: IconButton(icon: Icon(Icons.clear,size: 35,),onPressed: (){Navigator.pop(context);},),
            flexibleSpace: Image(
              image: AssetImage('assets/images/OccFotograf/monastero.jpg'
                  ''),
              fit: BoxFit.fill,
            ),
            backgroundColor: Colors.transparent,

            iconTheme: IconThemeData(color: Colors.white)),
      ),
      body: Post(),


    );

  }
}

class Post extends StatefulWidget{
  @override
  PostState createState() => new PostState();
}

bool liked = false;
class PostState extends State<Post> {
  _pressed() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(right: 100
            ),
              child: Text('Monastero di\nSanta Scolastica',
                style: TextStyle(fontSize: 30),
              ),),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: IconButton(
                icon: Icon(liked ? Icons.favorite : Icons.favorite_border_outlined,
                    color: liked ? Colors.redAccent : Colors.black),
                iconSize: 30,
                onPressed: () => _pressed(),
              ),),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 150),
          child: Text("Subiaco",
              style: TextStyle(fontSize: 22, fontFamily: "Times New Roman")),
        ),
        Text(
          "Il monastero di Santa Scolastica è uno dei luoghi più suggestivi del Lazio.",
          style: TextStyle(fontSize: 20),),
        SizedBox(
          height: 10,
        ),
        Text("Orari:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text("Tutti i giorni dalle 9.30 alle 12.15 e dalle 15.30 alle 18.15",
            style: TextStyle(fontSize: 18)),
        SizedBox(
          height: 10,
        ),
        Text("Come arrivare?",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text("Partenza: centro di Subiaco", style: TextStyle(fontSize: 18)),
        Text("Arrivo: Monastero di Santa Scolastica",
            style: TextStyle(fontSize: 18)),
        SizedBox(
          height: 20,
        ),
        Image(
          image: AssetImage(
              'assets/images/OccFotograf/comearrivaresubiaco.JPG'),
        ),
      ],
    );
  }
}