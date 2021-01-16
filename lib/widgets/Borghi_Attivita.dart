import 'dart:math';
import 'package:borough_king/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import "package:borough_king/widgets/preferiti.dart";
import "package:borough_king/widgets/occasioni_fotografiche.dart";
import "package:flutter/src/rendering/box.dart";
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';
import 'package:borough_king/main.dart';
import 'package:borough_king/widgets/Tolfa/info.dart';
import 'package:borough_king/widgets/Tolfa/musei.dart';
class Attivita {
  String nome;
  String foto;

  Attivita({this.nome, this.foto});
}


class Borghi_Attivita_Tolfa extends StatelessWidget {
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
            onPressed: () {},
          )
        ],
      ),
      body: ListView(children: <Widget>[
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
                      size: 35.0,
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
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 40.0,
                    ),
                    onPressed: () {},
                  )),
            ), ],
        ),
        SizedBox(
          height:10,
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
          height:10,
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
                onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Lista_Attivita()));},
                title: Text(attivita[index].nome),
                leading: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  child: Image.asset(
                      'assets/images/Icons/${attivita[index].foto}'),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              )),
            );
          },
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black,
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
            onPressed: () {},
          )
        ],
      ),
      body: ListView(children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/subiaco.jpg'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
              child: Container(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.black,
                      size: 40.0,
                    ),
                    onPressed: () {},
                  )),
            ), ],
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
          height:10,
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
                onTap: () {},
                title: Text(attivita[index].nome),
                leading: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  child: Image.asset(
                      'assets/images/Icons/${attivita[index].foto}'),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              )),
            );
          },
        )
      ]),




      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black,
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
            onPressed: () {},
          )
        ],
      ),
      body: ListView(children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/anagni.jpg'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
              child: Container(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.black,
                      size: 40.0,
                    ),
                    onPressed: () {},
                  )),
            ), ],
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
          height:10,
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
                    onTap: () {},
                    title: Text(attivita[index].nome),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      child: Image.asset(
                          'assets/images/Icons/${attivita[index].foto}'),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  )),
            );
          },
        )
      ]),




      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black,
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
        title: Text("widgets.Bracciano", style: TextStyle(color: Colors.black)),
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
            onPressed: () {},
          )
        ],
      ),
      body: ListView(children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/bracciano.jpg'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 190, 0, 0),
              child: Container(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.black,
                      size: 40.0,
                    ),
                    onPressed: () {},
                  )),
            ), ],
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
          height:10,
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
                    onTap: () {},
                    title: Text(attivita[index].nome),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      child: Image.asset(
                          'assets/images/Icons/${attivita[index].foto}'),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  )),
            );
          },
        )
      ]),




      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black,
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
            onPressed: () {},
          )
        ],
      ),
      body: ListView(children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/calcata.jpg'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: Container(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.black,
                      size: 40.0,
                    ),
                    onPressed: () {},
                  )),
            ), ],
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
          height:10,
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
                    onTap: () {},
                    title: Text(attivita[index].nome),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      child: Image.asset(
                          'assets/images/Icons/${attivita[index].foto}'),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  )),
            );
          },
        )
      ]),




      bottomNavigationBar: BottomNavigationBar(
        // Server per inserire la barra inferiore
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff90EE90),
        selectedItemColor: Colors.black,
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

