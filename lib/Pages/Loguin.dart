import 'package:flutter/material.dart';
import 'package:jk/Pages/HomePage.dart';
import 'package:jk/Pages/Pre_Cadastro.dart';

class Loguin_Home extends StatefulWidget {
  final _formaKey = GlobalKey<FormState>();
  @override
  _Loguin_HomeState createState() => _Loguin_HomeState();
}

class _Loguin_HomeState extends State<Loguin_Home> {
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
        body: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                      child: Image.asset("assets/jk.png")
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon((Icons.person)),
                        labelText: 'Usuario : ',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      ),
                      maxLines: null,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon((Icons.vpn_key)),
                        labelText: 'Senha : ',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      ),
                      maxLines: null,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: Container(
                    child: (Column(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pre_Cadastro()));
                          },
                          child: Text("Pré Cadastro",
                          style: TextStyle(color: Colors.red, fontSize: 13),),
                        ),
                      ],
                    )),
                  ),
                ),
                Container(
                  height: 50.0,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text(
                          'Entrar',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

