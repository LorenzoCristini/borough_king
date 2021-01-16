import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class mercatini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250.0),
        child : AppBar(
            leading: IconButton(icon: Icon(Icons.clear,size: 35,),onPressed: (){Navigator.pop(context);},),
            flexibleSpace: Image(
              image: AssetImage('assets/images/mercatiniSubiaco.jpg'),
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
          Text('Mercatini tipici',style: TextStyle(fontSize: 30),) ,
          Padding(
            padding: EdgeInsets.only(right: 300),
            child: Text("Subiaco",style: TextStyle(fontSize: 22, fontFamily: "Times New Roman")),
          ),
          Text("Non perdere i tradizionali mercatini di Natale lungo le vie del centro storico di Subiaco dove potrai comprare, presso i vari stand, oggetti tipici del luogo da regalare alle persone a te più care - o a te stesso se vuoi viziarti con un bel regalo! ",style: TextStyle(fontSize: 18),),
          SizedBox(
            height: 10,
          ),
          Text("Data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("3-7 Gennaio 2021",style: TextStyle(fontSize: 18)),
          Text("Presso",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("Piazza Giovanni Falcone",style: TextStyle(fontSize: 18)),
        ],
      ),

    );

  }
}