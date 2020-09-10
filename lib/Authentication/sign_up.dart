import 'package:flutter/material.dart';
import 'utilities.dart';
import 'dart:math' as math;
import 'package:keyboard_avoider/keyboard_avoider.dart';

const mainTextStyle = TextStyle(fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold);
const buttonStyle = TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w800, letterSpacing: 1.1, fontFamily: 'Roboto');


class Sign_Up extends StatefulWidget {
  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      value: 0.0,
      duration: Duration(seconds: 25),
      upperBound: 1,
      lowerBound: -1,
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    // if (_controller.value == 0.8) _controller.reverse();
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget child) {
                  return ClipPath(
                    clipper: DrawClip(_controller.value),
                    child: Container(
                      height: size.height * 0.5,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFFA088BF),
                              Color(0xFF8A6DB0),
                              Color(0xFF673AB7),
                              Color(0xFF624785),]),
                      ),
                    ),
                  );
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Card(
                  child: CircleAvatar(
                    radius: 120.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(118),
                      child: Image.asset('assets/logo.png'),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  elevation: 15.0,
                  shape: CircleBorder(),
                ),
              ),
            ],
          ),
          Text(
            'Sign Up',
            style:  mainTextStyle,
          ),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.only(top: 18),
            child: input('Name'),
          ),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.only(top: 18),
            child: input('email'),
          ),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.only(top: 18),
            child: input('Password', isPass: true),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,right: 10.0,left: 10.0),
            child: Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.deepPurple,
              child: MaterialButton(
                minWidth: 100.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 30.0, 15.0),
                onPressed: (){
                  print('login pressed');
                  Navigator.pushReplacementNamed(context, '/carousel');},
                child: Text(
                  'Sign In',
                  style: buttonStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 25),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'You have an account?',
                          style:
                          TextStyle(color: Color(0xFFACACAC), fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        onTap: () {Navigator.pushReplacementNamed(context, '/login');},
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget input(String hint, {bool isPass = false}) {
    return TextField(
      obscureText: isPass,
      decoration: InputDecoration(
          hintText: '$hint',
          hintStyle: TextStyle(color: Colors.grey[700], fontSize: 14),
          contentPadding: EdgeInsets.only(top: 20, bottom: 20, left: 38),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black45),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black45),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          )),
    );
  }

}

class DrawClip extends CustomClipper<Path> {
  double move = 0;
  double slice = math.pi;
  DrawClip(this.move);
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.8);
    double xCenter =
        size.width * 0.5 + (size.width * 0.6 + 1) * math.sin(move * slice);
    double yCenter = size.height * 0.8 + 69 * math.cos(move * slice);
    path.quadraticBezierTo(xCenter, yCenter, size.width, size.height * 0.8);

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
