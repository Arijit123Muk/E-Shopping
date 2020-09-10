import 'package:flutter/material.dart';
import 'package:shopping/Authentication/utilities.dart';

class Get_Started extends StatefulWidget {
  @override
  _Get_StartedState createState() => _Get_StartedState();
}

class _Get_StartedState extends State<Get_Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color:Colors.deepPurple[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              child: CircleAvatar(
                radius: 130.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(128),
                  child: Image.asset('assets/logo.png'),
                ),
                backgroundColor: Colors.white,
              ),
              elevation: 15.0,
              shape: CircleBorder(),
            ),
            Text(
              'Tvish',
              style: mainTextStyle,
            ),
            Text(
              'With Tvish, you can always shop\nanywhere anytime around.',
              textAlign: TextAlign.center,
              style: subTextStyle,
            ),
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.deepPurple[500],
              child: MaterialButton(
                minWidth: 150.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {

                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: Text(
                  "Get Started!",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
