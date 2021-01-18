import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import 'package:borough_king/widgets/Preferiti/preferitiBracciano.dart';


class lago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(210.0),
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
              image: AssetImage('assets/images/Bracciano/Lago di Bracciano.jpg'
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
      liked= !liked;
      cards.contains('Lago di Bracciano') ? cards.remove('Lago di Bracciano') : cards.add('Lago di Bracciano') ;
      !borghi.contains('Bracciano')  ? borghi.add('Bracciano') : null;
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
            Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                'Lago di Bracciano',
                style: TextStyle(fontSize: 26),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: IconButton(
                icon: Icon(liked ? Icons.favorite : Icons.favorite_border_outlined,
                color: liked ? Colors.redAccent : Colors.black),
                iconSize: 30,
                onPressed: () => _pressed(),
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
          "La veduta dal lago di Bracciano è uno dei panorami più meravigliosi al mondo!",
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
    );
  }
}
