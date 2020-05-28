import 'package:flutter/material.dart';


class Pre_Cadastro extends StatefulWidget {
  @override
  _Pre_CadastroState createState() => _Pre_CadastroState();
}

class _Pre_CadastroState extends State<Pre_Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: Image.asset(
            "assets/jk.png",
            height: 220,
            width: 220,
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 1,
                      ),
                      child: Text('Pré Cadastro',
                          style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey))),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: (InputDecoration(
                        fillColor: Colors.red[100],
                        filled: false,
                        labelText: 'Nome Completo : ',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      )),
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty) return "Campo Obrigatório.";
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: (InputDecoration(
                        fillColor: Colors.red[100],
                        filled: false,
                        labelText: 'Email : ',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      )),
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty) return "Campo Obrigatório.";
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    height: 50.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {},
                          child: Text(
                            'Enviar',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
