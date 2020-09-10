import 'package:flutter/material.dart';
import 'package:bouncing_widget/bouncing_widget.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 150.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      CircleAvatar(
                        radius: 100,
                        child: ClipOval(
                          child: Image.asset('assets/logo.png',width: 200,
                            height: 200,
                            fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(height: 50.0,),

                      BouncingWidget(
                        scaleFactor: 1.0,
                        onPressed: () {
                          print('Login Button Pressed');
                          setState(() {
                            Navigator.popAndPushNamed(context, '/login');
                          });},
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'OpenSans',letterSpacing: 2.0,fontWeight: FontWeight.bold,
                                color: Color(0xFF8185E2),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 30.0,),

                      BouncingWidget(
                        scaleFactor: 1.0,
                        onPressed: () {
                          print('Sign Up Button Pressed');
                          setState(() {
                            Navigator.popAndPushNamed(context, '/sign_up');
                          });},
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'OpenSans',letterSpacing: 2.0,fontWeight: FontWeight.bold,
                                color: Color(0xFF8185E2),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
