import 'package:flutter/material.dart';

class Home_Adm extends StatefulWidget {
  @override
  _Home_AdmState createState() => _Home_AdmState();
}

class _Home_AdmState extends State<Home_Adm> {
  String value = "";
  final _formaKey = GlobalKey<FormState>();

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
            key: _formaKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 10,
                      ),
                      child: Text('Informe Dados Do Aluno',
                          style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey))),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Matricula : ",
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
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
                      decoration: InputDecoration(

                        labelText: "CPF : ",
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
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

                        labelText: 'Nome : ',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      )),
                      maxLines: 1,
                      validator: (value) {
                        if (value.isEmpty) return "Campo Obrigatório.";
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: (InputDecoration(
                        fillColor: Colors.red[100],
                        filled: false,

                        labelText: 'Nascimento : ',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      )),
                      maxLines: 1,
                      validator: (value) {
                        if (value.isEmpty) return "Campo Obrigatório.";
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: (InputDecoration(
                        fillColor: Colors.red[100],
                        filled: false,
                        labelText: 'BOLSA : ',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      )),
                      maxLines: 1,
                      validator: (value) {
                        if (value.isEmpty) return "Campo Obrigatório.";
                        return null;
                      },
                    ),
                  ),

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
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 10,
                      ),
                      child: Text('Informe Curso do Aluno',
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
                        labelText: 'Curso : ',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      )),
                      maxLines: 1,
                      validator: (value) {
                        if (value.isEmpty) return "Campo Obrigatório.";
                        if (value.length < 10)
                          return "O Campo Precisa Ter no Minimo 10 caracters.";
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: (InputDecoration(
                        fillColor: Colors.red[100],
                        filled: false,

                        labelText: 'Materia Do Curso : ',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      )),
                      maxLines: 1,
                      validator: (value) {
                        if (value.isEmpty) return "Campo Obrigatório.";
                        if (value.length < 10)
                          return "O Campo Precisa Ter no Minimo 10 caracters.";
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 50.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            if (_formaKey.currentState.validate()) {}
                          },
                          child: Text(
                            'Enviar',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}