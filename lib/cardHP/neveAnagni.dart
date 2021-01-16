import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class neve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(230.0),
        child : AppBar(
            leading: IconButton(icon: Icon(Icons.clear,size: 35,),onPressed: (){Navigator.pop(context);},),
            flexibleSpace: Image(
              image: AssetImage('assets/images/neveAnagni.jpg'),
              fit: BoxFit.scaleDown,
            ),
            backgroundColor: Colors.white,

            iconTheme: IconThemeData(color: Colors.white)),
      ),
      body:
      ListView(

        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Text('Paesaggi innevati',style: TextStyle(fontSize: 30),) ,
          Padding(
            padding: EdgeInsets.only(right: 300),
            child: Text("Anagni",style: TextStyle(fontSize: 22, fontFamily: "Times New Roman")),
          ),
          Text("Ad Anagni è finalmente arrivata la neve! I monti sono bianchi e candidi e non aspettano altro che te! Mettiti lo zaino in spalla, guanti e sciarpa e vieni a vivere la magia dell'inverno in questi bellissimi paesaggi. Il miglior pupazzo di neve si aggiudicherà un premio speciale!",style: TextStyle(fontSize: 18),),
          SizedBox(
            height:10,
          ),
          Text("Data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("Variabile ",style: TextStyle(fontSize: 18)),
          Text("Presso",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("Anagni ",style: TextStyle(fontSize: 18)),
        ],
      ),

    );

  }
}