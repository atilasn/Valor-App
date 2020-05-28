import 'package:flutter/material.dart';
import 'package:jk/Pages/Crud_adm.dart';
import 'package:jk/Pages/Grafico.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          backgroundColor: Colors.grey,
          title: Image.asset(
            "assets/jk.png",
            width: 220,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                accountName: new Text('João Silva'),
                accountEmail: new Text('joaosilva@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage('https://i.pravatar.cc/300'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person_add),
                title: Text(
                  'Adicionar Aluno',
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home_Adm()));
                },
              ),
              ListTile(
                leading: Icon(Icons.compare_arrows),
                title: Text(
                  'Grafico',
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home_Graficos()));
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
          margin: EdgeInsets.only( left: 10,right: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 30,
                  ),
                  child: Text(
                    'Serviços',
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
                          "assets/pessoas.png",
                          height: 200,
                          width: 135,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home_Adm()));
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: FlatButton(
                        child: Image.asset(
                          "assets/grafico.png",
                          height: 200,
                          width: 135,
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
                    Text(
                      'Adc Aluno',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Text(
                      'Serviços',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}