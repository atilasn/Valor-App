import 'package:flutter/material.dart';

class Home_Graficos extends StatefulWidget {
  @override
  _Home_Graficos createState() => _Home_Graficos();
}

class _Home_Graficos extends State<Home_Graficos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.perm_identity, size: 50, color: Colors.blueAccent),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Alunos Matriculados : 434',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Icon(Icons.perm_identity, size: 50, color: Colors.red),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Alunos com Matriculas Tracadas : 78',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}