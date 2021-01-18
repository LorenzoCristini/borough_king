import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import 'package:borough_king/widgets/Preferiti/preferitiTolfa.dart';



class rocca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250.0),
        child : AppBar(
            leading: IconButton(icon: Icon(Icons.clear,size: 35,),onPressed: (){Navigator.pop(context);},),
            flexibleSpace: Image(
              image: AssetImage('assets/images/Tolfa/La Rocca.jpg'),
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
      cards.contains('La Rocca') ? cards.remove('La Rocca') : cards.add('La Rocca');
      !borghi.contains('Tolfa')  ? borghi.add('Tolfa') : null;
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
            Padding(padding: EdgeInsets.only(right: 150
            ),
              child: Text('La Rocca', style: TextStyle(fontSize: 30),
              ),),
            Padding(padding: EdgeInsets.fromLTRB(50, 0, 0, 0
            ),
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
          child: Text("Tolfa",
              style: TextStyle(fontSize: 22, fontFamily: "Times New Roman")),
        ),
        Text("La Rocca di Tolfa è il posto perfetto per scatti memorabili!",
          style: TextStyle(fontSize: 20),),
        SizedBox(
          height: 10,
        ),
        Text("Orari:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text("Tutti i giorni dalle 08:00 alle 21:00",
            style: TextStyle(fontSize: 18)),
        SizedBox(
          height: 10,
        ),
        Text("Come arrivare?",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text("Partenza: centro di Tolfa", style: TextStyle(fontSize: 18)),
        Text("Arrivo: La Rocca", style: TextStyle(fontSize: 18)),
        SizedBox(
          height: 20,
        ),
        Image(
          image: AssetImage('assets/images/OccFotograf/comearrivaretolfa.JPG'),
        ),
      ],
    );
  }
}