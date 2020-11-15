import 'package:flutter/material.dart';
import 'package:jk/Pages/Sistem_Com_Login.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text("Qual tipo de Interface ?")),
        body: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2, left: 75),
                child: FlatButton(
                  child: Image.asset(
                    "assets/interface simples.png",
                    height: 140,
                    width: 200,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 110),
                child: Text(
                  'Interface Simples          ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 75),
                child: FlatButton(
                  child: Image.asset(
                    "assets/interce Personalidade.png",
                    height: 140,
                    width: 200,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 80),
                child: Text(
                  'Interface Personalizada',
                  style: TextStyle(
                    fontSize: 20,
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
