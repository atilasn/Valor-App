import 'package:flutter/material.dart';
import 'package:jk/Pages/Design.dart';

class Home_Adm extends StatefulWidget {
  @override
  _Home_AdmState createState() => _Home_AdmState();
}

class _Home_AdmState extends State<Home_Adm> {
  String dropdownCity = 'Android';
  String value = "";
  final _formaKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text("Qual tipo de aplicativo?")),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 75),
                child: FlatButton(
                  child: Image.asset(
                    "assets/android-and-ios-logo.jpg",
                    height: 150,
                    width: 200,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Design()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 80),
                child: FlatButton(
                  child: Image.asset(
                    "assets/Apple-unleashes-iOS-11-beta-4-on-Developers.jpg",
                    height: 135,
                    width: 120,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Design()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 80),
                child: FlatButton(
                  child: Image.asset(
                    "assets/android.jpg",
                    height: 135,
                    width: 120,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Design()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
