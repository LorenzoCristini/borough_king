import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class presepe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250.0),
        child : AppBar(
            leading: IconButton(icon: Icon(Icons.clear,size: 35,),onPressed: (){Navigator.pop(context);},),
            flexibleSpace: Image(
              image: AssetImage('assets/images/presepeCalcata.jpg'),
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
          Text('Presepe vivente',style: TextStyle(fontSize: 30),) ,
          Padding(
            padding: EdgeInsets.only(right: 300),
            child: Text("Calcata",style: TextStyle(fontSize: 22, fontFamily: "Times New Roman")),
          ),
          Text("Se state cercando un'atmosfera calda e amorevole non potete perdervi il Presepe vivente a Calcata. Vi troverete catapultati in un tempo passato; lungo il percorso potrete osservare scene di vita quotidiana al tempo di Gesù; passeggiando per le stradine strette incontrerete artigiani, pastori a avrete modo di conoscere mestieri che caratterizzavano quegli anni. " ,style: TextStyle(fontSize: 18),),
          SizedBox(
            height: 10,
          ),
          Text("Data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("18-24 Dicembre 2020",style: TextStyle(fontSize: 18)),
          Text("Presso",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("Via Di Porta Segreta",style: TextStyle(fontSize: 18)),
        ],
      ),

    );

  }
}