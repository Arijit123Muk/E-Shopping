import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
            () => Navigator.pushReplacementNamed(context, '/wrapper'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          fit: StackFit.expand, children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFA088BF),
                  Color(0xFF8A6DB0),
                  Color(0xFF673AB7),
                  Color(0xFF624785),

                ],
                stops: [0.1, 0.4,0.7, 0.9],
              )
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[DietenLogo()],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.8),
                  ),
                  Text(
                    "Powered By",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.8)),
                  Text("Tvish",
                      style: TextStyle(
                          color: Colors.green[300],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}

class DietenLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: CircleAvatar(
        radius: 131.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(130),
          child: Image.asset('assets/logo.png'),
        ),
        backgroundColor:Colors.white,
      ),
      elevation: 15.0,
      shape: CircleBorder(),
    );
  }
}