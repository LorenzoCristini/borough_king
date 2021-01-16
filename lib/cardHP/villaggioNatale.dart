import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class villaggio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250.0),
      child : AppBar(
          leading: IconButton(icon: Icon(Icons.clear,size: 35,),onPressed: (){Navigator.pop(context);},),
          flexibleSpace: Image(
            image: AssetImage('assets/images/villaggioTolfa.jpg'),
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
              Text('Villaggio di Babbo Natale',style: TextStyle(fontSize: 30),) ,
          Padding(
            padding: EdgeInsets.only(right: 300),
              child: Text("Tolfa",style: TextStyle(fontSize: 22, fontFamily: "Times New Roman")),
          ),
              Text("Babbo Natale è qui con noi! Il suo villaggio è pronto a ospitarvi e a farvi vivere delle sensazioni magiche! Preparatevi al massimo divertimento tra elfi, renne volanti e tanti dolci. Non dimenticatevi di portare la vostra letterina: Babbo Natale ve la leggerà di persona!",style: TextStyle(fontSize: 18),),
              SizedBox(
                height: 10,
              ),
              Text("Data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              Text("21-24 Dicembre 2020",style: TextStyle(fontSize: 18)),
              Text("Presso",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              Text("Piazza Vittorio Veneto",style: TextStyle(fontSize: 18)),
            ],
        ),

    );

  }
}