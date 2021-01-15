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
            child: Text("Calcata",style: TextStyle(fontSize: 25)),
          ),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu gravida mi, eu fringilla eros. Maecenas ut est eget orci feugiat vestibulum gravida a quam. Cras nec purus eu purus ultrices tempus. In tempus, lectus ac ultrices mollis, massa mi porta lectus, vitae suscipit quam turpis luctus ex. Duis eget consequat diam. Cras neque lacus, rutrum ut fringilla sed, cursus a justo. Integer at metus ac nunc mattis euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla ac elit ac arcu porttitor dictum. Suspendisse consectetur gravida libero sed interdum. Morbi varius libero consectetur convallis pharetra. Cras in venenatis sem. Cras maximus, mi sit amet gravida porta, magna nisl condimentum est, et rhoncus lacus urna semper odio. Ut vel diam ut justo consequat porttitor vitae in tortor. ",style: TextStyle(fontSize: 15),),
          Text("Data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("18-24 Dicembre 2020",style: TextStyle(fontSize: 18)),
          Text("Presso",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("Via Di Porta Segreta",style: TextStyle(fontSize: 18)),
        ],
      ),

    );

  }
}