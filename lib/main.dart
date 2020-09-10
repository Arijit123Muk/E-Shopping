import 'package:shopping/Authentication/login.dart';
import 'package:shopping/Authentication/sign_up.dart';
import 'package:shopping/Authentication/wrapper.dart';
import 'package:shopping/Home/GetStarted.dart';
import 'package:shopping/Home/carousel.dart';
import 'package:shopping/Home/cart.dart';
import 'package:shopping/Home/home.dart';
import 'package:flutter/material.dart';
import 'splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => SplashScreen(),
      '/wrapper': (context) => Wrapper(),
      '/login': (context) => Login(),
      '/sign_up': (context) =>Sign_Up(),
      '/home': (context) => Home(),
      '/carousel': (context) =>Carousel(),
      '/getstarted': (context) =>Get_Started(),
      '/cart': (context) =>Cart(),
    },
  ));
}
