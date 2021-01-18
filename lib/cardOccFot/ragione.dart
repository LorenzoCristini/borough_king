import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import 'package:borough_king/widgets/Preferiti/preferitiAnagni.dart';


class ragione extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300.0),
        child : AppBar(
            leading: IconButton(icon: Icon(Icons.clear,size: 35,),onPressed: (){Navigator.pop(context);},),
            flexibleSpace: Image(
              image: AssetImage('assets/images/Anagni/Palazzo della Ragione.jpg'
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
      cards.contains('Palazzo della Ragione') ? cards.remove('Palazzo della Ragione') : cards.add('Palazzo della Ragione');
      !borghi.contains('Anagni')  ? borghi.add('Anagni') : null;
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
              child: Text(
                'Palazzo della\nRagione', style: TextStyle(fontSize: 30),
              ),),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
          child: Text("Anagni",
              style: TextStyle(fontSize: 22, fontFamily: "Times New Roman")),
        ),
        Text(
          "Il Palazzo della Ragione è una delle poche e fra le più antiche strutture pubbliche comunali esistenti nel Lazio meridionale.",
          style: TextStyle(fontSize: 20),),
        SizedBox(
          height: 10,
        ),
        Text("Orari:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text("Tutti i giorni dalle 08:00 alle 18:00",
            style: TextStyle(fontSize: 18)),
        SizedBox(
          height: 10,
        ),
        Text("Come arrivare?",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text("Partenza: centro di Anagni", style: TextStyle(fontSize: 18)),
        Text("Arrivo: Palazzo della Ragione", style: TextStyle(fontSize: 18)),
        SizedBox(
          height: 20,
        ),
        Image(
          image: AssetImage('assets/images/OccFotograf/comearrivareanagni.JPG'),
        ),
      ],
    );

  }
}