import 'package:flutter/material.dart';
import 'package:jk/Pages/Crud_adm.dart';
import 'package:jk/Pages/Grafico.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownCity = 'Brasília';
  String value = "";

  Future<bool> _onWillPop() async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Sair ?'),
        actions: <Widget>[
          RaisedButton(
            child: Text('Sim'),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
          RaisedButton(
            child: Text('Não'),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text("Quanto custa criar um App ?")),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: new Text('                           Bem Vindo '),
                accountEmail:
                    new Text('           Quanto custa criar um App ?'),
              ),
              ListTile(
                leading: Icon(Icons.add_to_photos),
                title: Text(
                  'Orçamentos',
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_Adm()));
                },
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  'Contatos',
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_Graficos()));
                },
              ),
              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text(
                  'Voltar',
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    right: 30,
                  ),
                  child: Text(
                    '   Serviços',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 2,
                      ),
                      child: FlatButton(
                        child: Image.asset(
                          "assets/orçamentos01.png",
                          height: 200,
                          width: 180,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home_Adm()));
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                      ),
                      child: Text(
                        'Orçamentos',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 2,
                      ),
                      child: FlatButton(
                        child: Image.asset(
                          "assets/entre em contato.png",
                          height: 200,
                          width: 220,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home_Graficos()));
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                      ),
                      child: Text(
                        'Contatos',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
