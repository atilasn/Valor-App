import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
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
          backgroundColor: Colors.black,
          title: Text("Valor App")),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'atilasn90@gmail.com',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Telefone:(61)98234-7337',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                  right: 30,
                ),
                child: Text(
                  '  Rede Social',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: FlatButton(
                        onPressed: () async {
                          const url = 'https://web.facebook.com/?_rdc=1&_rdr';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Image.asset(
                          "assets/facebook.png",
                          height: 60,
                          width: 60,
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: FlatButton(
                        onPressed: () async {
                          const url = 'https://twitter.com/home?lang=e';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Image.asset(
                          "assets/Twitter_logo_2012.svg.png",
                          height: 60,
                          width: 60,
                        ),
                      )),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: FlatButton(
                        onPressed: () async {
                          const url = 'https://www.instagram.com/atilasn1/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Image.asset(
                          "assets/instal.png",
                          height: 60,
                          width: 60,
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(2),
                      child: FlatButton(
                        onPressed: () async {
                          const url = 'https://www.linkedin.com/feed/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Image.asset(
                          "assets/link.jpg",
                          height: 60,
                          width: 60,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
