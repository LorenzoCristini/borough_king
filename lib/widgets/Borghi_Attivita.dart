import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import "package:borough_king/widgets/occasioni_fotografiche.dart";
import 'package:borough_king/widgets/search.dart';
//Calcata
import 'package:borough_king/widgets/Calcata/botteghe.dart';
import 'package:borough_king/widgets/Calcata/monumenti.dart';
import 'package:borough_king/widgets/Calcata/musei.dart';
import 'package:borough_king/widgets/Calcata/info.dart';
import 'package:borough_king/widgets/Calcata/occasioni.dart';
import 'package:borough_king/widgets/Calcata/mappa.dart';
//Subiaco

import 'package:borough_king/widgets/Subiaco/info.dart';
import 'package:borough_king/widgets/Subiaco/botteghe.dart';
import 'package:borough_king/widgets/Subiaco/monumenti.dart';
import 'package:borough_king/widgets/Subiaco/musei.dart';
import 'package:borough_king/widgets/Subiaco/occasioni.dart';
import 'package:borough_king/widgets/Subiaco/mappa.dart';

//Anagni
import 'package:borough_king/widgets/Anagni/info.dart';
import 'package:borough_king/widgets/Anagni/botteghe.dart';
import 'package:borough_king/widgets/Anagni/monumenti.dart';
import 'package:borough_king/widgets/Anagni/occasioni.dart';
import 'package:borough_king/widgets/Anagni/musei.dart';
import 'package:borough_king/widgets/Anagni/mappa.dart';


//Tolfa
import 'package:borough_king/widgets/Tolfa/info.dart';
import 'package:borough_king/widgets/Tolfa/musei.dart';
import 'package:borough_king/widgets/Tolfa/botteghe.dart';
import 'package:borough_king/widgets/Tolfa/monumenti.dart';
import 'package:borough_king/widgets/Tolfa/occasioni.dart';
import 'package:borough_king/widgets/Tolfa/mappa.dart';
//Bracciano
import 'package:borough_king/widgets/Bracciano/musei.dart';
import 'package:borough_king/widgets/Bracciano/occasioni.dart';
import 'package:borough_king/widgets/Bracciano/monumenti.dart';
import 'package:borough_king/widgets/Bracciano/botteghe.dart';
import 'package:borough_king/widgets/Bracciano/info.dart';
import 'package:borough_king/widgets/Bracciano/mappa.dart';

class Attivita {
  String nome;
  String foto;

  Attivita({this.nome, this.foto});
}

class Borghi_Attivita_Tolfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tolfa", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xff90EE90),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: IconButton(
                icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            )),
            onPressed: () {
              List<String> borghi = [
                "Tolfa",
                "Anagni",
                "Subiaco",
                "Bracciano",
                "Calcata"
              ];
              showSearch(context: context, delegate: Search(borghi));
            },
          )
        ],
      ),
      body: Post(),

      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black.withOpacity(.60),
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 13.5,
        unselectedFontSize: 13.5,
        onTap: (value) {
          // Respond to item press.
          //Ogni bottone ha un indice e gli indici partono da 0 quindi il primo è la home e gli altri a seguire
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => preferiti()),
            );
          } else if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => occasioniFotografiche()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Preferiti',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: '   Occasioni\n Fotografiche',
            icon: Icon(Icons.panorama),
          ),
        ],
      ),
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
      borghi.contains('Tolfa') ? borghi.remove('Tolfa') : borghi.add('Tolfa');
      borghi.contains('Tolfa') ? liked = true : liked = false;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<StatelessWidget> change = [BottegheTo(),MonumentiTo(),Musei(),OccasioniTo(),MappaTo()];
    final List<Attivita> attivita = [
      Attivita(nome: 'Botteghe', foto: 'store-24px.jpg'),
      Attivita(nome: 'Monumenti e Parchi', foto: 'account_balance-24px.jpg'),
      Attivita(nome: 'Musei', foto: 'museum-24px.jpg'),
      Attivita(nome: 'Occasioni Fotografiche', foto: 'insert_photo-24px.jpg'),
      Attivita(nome: 'Mappa', foto: 'map-24px.jpg'),
    ];
    return ListView(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/tolfa.jpg'),
          ),
          Container(
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: Icon(
                    Icons.info_outlined,
                    color: Colors.white,
                    size: 34.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Info_Tolfa()));
                  })),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
            child: Container(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  icon: Icon(liked ? Icons.favorite : Icons.favorite_border_outlined,
                      color: liked ? Colors.redAccent : Colors.black),
                  iconSize: 40,
                  onPressed: () => _pressed(),
                ),),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'Attività',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.black,
          //letterSpacing: 1.0,
          fontWeight: FontWeight.bold,
          fontFamily: "Times New Roman",
        ),
      ),
      SizedBox(
        height: 10,
      ),
      ListView.builder(
        itemCount: attivita.length,
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder:
                      (BuildContext context) => change[index]));
                },
                title: Text(attivita[index].nome),
                leading: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  child: Image.asset(
                      'assets/images/Icons/${attivita[index].foto}'),
                ),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 30,
                ),

              ),
            ),
          );
        },
      ),
    ]);
  }

}

class Borghi_Attivita_Subiaco extends StatelessWidget {
  final List<Attivita> attivita = [
    Attivita(nome: 'Botteghe', foto: 'store-24px.jpg'),
    Attivita(nome: 'Monumenti e Parchi', foto: 'account_balance-24px.jpg'),
    Attivita(nome: 'Musei', foto: 'museum-24px.jpg'),
    Attivita(nome: 'Occasioni Fotografiche', foto: 'insert_photo-24px.jpg'),
    Attivita(nome: 'Mappa', foto: 'map-24px.jpg'),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Subiaco", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xff90EE90),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: IconButton(
                icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            )),
            onPressed: () {
              List<String> borghi = [
                "Tolfa",
                "Anagni",
                "Subiaco",
                "Bracciano",
                "Calcata"
              ];
              showSearch(context: context, delegate: Search(borghi));
            },
          )
        ],
      ),
      body: Subiaco(),




      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black.withOpacity(.60),
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 13.5,
        unselectedFontSize: 13.5,
        onTap: (value) {
          // Respond to item press.
          //Ogni bottone ha un indice e gli indici partono da 0 quindi il primo è la home e gli altri a seguire
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => preferiti()),
            );
          } else if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => occasioniFotografiche()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Preferiti',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: '   Occasioni\n Fotografiche',
            icon: Icon(Icons.panorama),
          ),
        ],
      ),
    );
  }
}

class Subiaco extends StatefulWidget{
  @override
  SubiacoState createState() => new SubiacoState();
}

bool like = false;
class SubiacoState extends State<Subiaco> {
  _pressed() {
    setState(() {
      borghi.contains('Subiaco') ? borghi.remove('Subiaco') : borghi.add('Subiaco');
      borghi.contains('Subiaco') ? like = true : like= false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<StatelessWidget> change = [BottSubiaco(), MonuSubiaco(), MuseiSubiaco() ,OccSubiaco(),MappaSu()];
    final List<Attivita> attivita = [
      Attivita(nome: 'Botteghe', foto: 'store-24px.jpg'),
      Attivita(nome: 'Monumenti e Parchi', foto: 'account_balance-24px.jpg'),
      Attivita(nome: 'Musei', foto: 'museum-24px.jpg'),
      Attivita(nome: 'Occasioni Fotografiche', foto: 'insert_photo-24px.jpg'),
      Attivita(nome: 'Mappa', foto: 'map-24px.jpg'),
    ];
    return ListView(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/subiaco.jpg'),
          ),
          Container(
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: Icon(
                    Icons.info_outlined,
                    color: Colors.white,
                    size: 34.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Info_Subiaco()));
                  })),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
            child: Container(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  icon: Icon(like ? Icons.favorite : Icons.favorite_border_outlined,
                  color: like ? Colors.redAccent : Colors.black),
                  iconSize: 40,
                  onPressed: () => _pressed(),
                  ),),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'Attività',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: "Times New Roman",
        ),
      ),
      SizedBox(
        height: 10,
      ),
      ListView.builder(
        itemCount: attivita.length,
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {Navigator.of(context).push(new MaterialPageRoute(builder:
                    (BuildContext context) => change[index]));},
                title: Text(attivita[index].nome),
                leading: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  child: Image.asset(
                      'assets/images/Icons/${attivita[index].foto}'),
                ),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 30,
                ),

              ),
            ),
          );
        },
      ),
    ]);
  }
}

class Borghi_Attivita_Anagni extends StatelessWidget {


  final List<Attivita> attivita = [
    Attivita(nome: 'Botteghe', foto: 'store-24px.jpg'),
    Attivita(nome: 'Monumenti e Parchi', foto: 'account_balance-24px.jpg'),
    Attivita(nome: 'Musei', foto: 'museum-24px.jpg'),
    Attivita(nome: 'Occasioni Fotografiche', foto: 'insert_photo-24px.jpg'),
    Attivita(nome: 'Mappa', foto: 'map-24px.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anagni", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xff90EE90),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                )),
            onPressed: () {
              List<String> borghi = [
                "Tolfa",
                "Anagni",
                "Subiaco",
                "Bracciano",
                "Calcata"
              ];
              showSearch(context: context, delegate: Search(borghi));
            },
          )
        ],
      ),
      body: Anagni(),

      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black.withOpacity(.60),
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 13.5,
        unselectedFontSize: 13.5,
        onTap: (value) {
          // Respond to item press.
          //Ogni bottone ha un indice e gli indici partono da 0 quindi il primo è la home e gli altri a seguire
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => preferiti()),
            );
          } else if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => occasioniFotografiche()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Preferiti',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: '   Occasioni\n Fotografiche',
            icon: Icon(Icons.panorama),
          ),
        ],
      ),
    );
  }
}

class Anagni extends StatefulWidget{
  @override
  AnagniState createState() => new AnagniState();
}
bool lik = false;


class AnagniState extends State<Anagni> {

  _pressed() {
    setState(() {

      borghi.contains('Anagni') ? borghi.remove('Anagni') : borghi.add('Anagni');
      borghi.contains('Anagni') ? lik = true : lik= false;
    });
  }


  @override
  Widget build(BuildContext context) {
    final List<StatelessWidget> change = [BottegheAn(),MonumentiAn(),MuseiAn(),OccasioniAn(),MappaAn()];
    final List<Attivita> attivita = [
      Attivita(nome: 'Botteghe', foto: 'store-24px.jpg'),
      Attivita(nome: 'Monumenti e Parchi', foto: 'account_balance-24px.jpg'),
      Attivita(nome: 'Musei', foto: 'museum-24px.jpg'),
      Attivita(nome: 'Occasioni Fotografiche', foto: 'insert_photo-24px.jpg'),
      Attivita(nome: 'Mappa', foto: 'map-24px.jpg'),
    ];
    return ListView(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/anagni.jpg'),
          ),
          Container(
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: Icon(
                    Icons.info_outlined,
                    color: Colors.white,
                    size: 34.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Info_Anagni()));
                  })),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
            child: Container(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  icon: Icon(lik ? Icons.favorite : Icons.favorite_border_outlined,
                      color: lik ? Colors.redAccent : Colors.black),
                  iconSize: 40,
                  onPressed: () => _pressed(),
                ),),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'Attività',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: "Times New Roman",
        ),
      ),
      SizedBox(
        height: 10,
      ),
      ListView.builder(
        itemCount: attivita.length,
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {Navigator.of(context).push(new MaterialPageRoute(builder:
                    (BuildContext context) => change[index]));},
                title: Text(attivita[index].nome),
                leading: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  child: Image.asset(
                      'assets/images/Icons/${attivita[index].foto}'),
                ),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 30,
                ),

              ),
            ),
          );
        },
      ),
    ]);
  }
}

class Borghi_Attivita_Bracciano extends StatelessWidget {
  final List<Attivita> attivita = [
    Attivita(nome: 'Botteghe', foto: 'store-24px.jpg'),
    Attivita(nome: 'Monumenti e Parchi', foto: 'account_balance-24px.jpg'),
    Attivita(nome: 'Musei', foto: 'museum-24px.jpg'),
    Attivita(nome: 'Occasioni Fotografiche', foto: 'insert_photo-24px.jpg'),
    Attivita(nome: 'Mappa', foto: 'map-24px.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bracciano", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xff90EE90),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                )),
            onPressed: () {
              List<String> borghi = [
                "Tolfa",
                "Anagni",
                "Subiaco",
                "Bracciano",
                "Calcata"
              ];
              showSearch(context: context, delegate: Search(borghi));
            },
          )
        ],
      ),
      body: Bracciano(),

      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black.withOpacity(.60),
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 13.5,
        unselectedFontSize: 13.5,
        onTap: (value) {
          // Respond to item press.
          //Ogni bottone ha un indice e gli indici partono da 0 quindi il primo è la home e gli altri a seguire
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => preferiti()),
            );
          } else if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => occasioniFotografiche()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Preferiti',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: '   Occasioni\n Fotografiche',
            icon: Icon(Icons.panorama),
          ),
        ],
      ),
    );
  }
}

class Bracciano extends StatefulWidget{
  @override
  BraccianoState createState() => new BraccianoState();
}

bool likee = false;
class BraccianoState extends State<Bracciano> {
  _pressed() {
    setState(() {
      borghi.contains('Bracciano') ? borghi.remove('Bracciano') : borghi.add('Bracciano');
      borghi.contains('Bracciano') ? likee = true : likee= false;
    });
  }


  @override
  Widget build(BuildContext context) {
    final List<StatelessWidget> change = [BottegheBr(),MonumentiBr(),MuseiBr(),OccasioniBr(),MappaBr()];
    final List<Attivita> attivita = [
      Attivita(nome: 'Botteghe', foto: 'store-24px.jpg'),
      Attivita(nome: 'Monumenti e Parchi', foto: 'account_balance-24px.jpg'),
      Attivita(nome: 'Musei', foto: 'museum-24px.jpg'),
      Attivita(nome: 'Occasioni Fotografiche', foto: 'insert_photo-24px.jpg'),
      Attivita(nome: 'Mappa', foto: 'map-24px.jpg'),
    ];
    return ListView(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/bracciano.jpg'),
          ),
          Container(
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: Icon(
                    Icons.info_outlined,
                    color: Colors.white,
                    size: 34.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Info_Bracciano()));
                  })),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 190, 0, 0),
            child: Container(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  icon: Icon(likee ? Icons.favorite : Icons.favorite_border_outlined,
                      color: likee ? Colors.redAccent : Colors.black),
                  iconSize: 40,
                  onPressed: () => _pressed(),
                ),),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'Attività',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: "Times New Roman",
        ),
      ),
      SizedBox(
        height: 10,
      ),
      ListView.builder(
        itemCount: attivita.length,
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {Navigator.of(context).push(new MaterialPageRoute(builder:
                    (BuildContext context) => change[index]));},
                title: Text(attivita[index].nome),
                leading: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  child: Image.asset(
                      'assets/images/Icons/${attivita[index].foto}'),
                ),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 30,
                ),

              ),
            ),
          );
        },
      ),
    ]);
  }
}
class Borghi_Attivita_Calcata extends StatelessWidget {
  final List<Attivita> attivita = [
    Attivita(nome: 'Botteghe', foto: 'store-24px.jpg'),
    Attivita(nome: 'Monumenti e Parchi', foto: 'account_balance-24px.jpg'),
    Attivita(nome: 'Musei', foto: 'museum-24px.jpg'),
    Attivita(nome: 'Occasioni Fotografiche', foto: 'insert_photo-24px.jpg'),
    Attivita(nome: 'Mappa', foto: 'map-24px.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcata", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xff90EE90),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                )),
            onPressed: () {
              List<String> borghi = [
              "Tolfa",
              "Anagni",
              "Subiaco",
              "Bracciano",
              "Calcata"
            ];
            showSearch(context: context, delegate: Search(borghi));
            },
          )
        ],
      ),
      body: Calcata(),

      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black.withOpacity(.60),
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 13.5,
        unselectedFontSize: 13.5,
        onTap: (value) {
          // Respond to item press.
          //Ogni bottone ha un indice e gli indici partono da 0 quindi il primo è la home e gli altri a seguire
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => preferiti()),
            );
          } else if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => occasioniFotografiche()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Preferiti',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: '   Occasioni\n Fotografiche',
            icon: Icon(Icons.panorama),
          ),
        ],
      ),
    );
  }
}

class Calcata extends StatefulWidget{
  @override
  CalcataState createState() => new CalcataState();
}

bool mipiace = false;
class CalcataState extends State<Calcata> {
  _pressed() {
    setState(() {

      borghi.contains('Calcata') ? borghi.remove('Calcata') : borghi.add('Calcata');
      borghi.contains('Calcata') ? mipiace = true : mipiace= false;

    });
  }


  @override
  Widget build(BuildContext context) {
    final List<StatelessWidget> change = [Botteghe_Calcata(), MonuCalcata(), CalcataMusei() ,OccasioniCalcata(),MappaCa()];
    final List<Attivita> attivita = [
      Attivita(nome: 'Botteghe', foto: 'store-24px.jpg'),
      Attivita(nome: 'Monumenti e Parchi', foto: 'account_balance-24px.jpg'),
      Attivita(nome: 'Musei', foto: 'museum-24px.jpg'),
      Attivita(nome: 'Occasioni Fotografiche', foto: 'insert_photo-24px.jpg'),
      Attivita(nome: 'Mappa', foto: 'map-24px.jpg'),
    ];
    return ListView(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/calcata.jpg'),
          ),
          Container(
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: Icon(
                    Icons.info_outlined,
                    color: Colors.white,
                    size: 34.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Info_Calcata()));
                  })),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Container(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  icon: Icon(mipiace ? Icons.favorite : Icons.favorite_border_outlined,
                      color: mipiace ? Colors.redAccent : Colors.black),
                  iconSize: 40,
                  onPressed: () => _pressed(),
                ),),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'Attività',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: "Times New Roman",
        ),
      ),
      SizedBox(
        height: 10,
      ),
      ListView.builder(
        itemCount: attivita.length,
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder:
                      (BuildContext context) => change[index]));
                },
                title: Text(attivita[index].nome),
                leading: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  child: Image.asset(
                      'assets/images/Icons/${attivita[index].foto}'),
                ),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 30,
                ),

              ),
            ),
          );
        },
      ),
    ]);

  }
}
