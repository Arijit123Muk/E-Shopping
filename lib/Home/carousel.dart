import 'package:flutter/material.dart';
import 'package:shopping/Authentication/utilities.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:bouncing_widget/bouncing_widget.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

 int page = 0,c=0;
  @override
  List<Container> pages = [
    Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            child: CircleAvatar(
              radius: 130.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(128),
                child: Image.asset('assets/ma1.gif'),
              ),
              backgroundColor:Colors.lightBlue,
            ),
            elevation: 15.0,
            shape: CircleBorder(),
          ),
          Text(
            'Dedication',
            style: mainTextStyle,
          ),
          Text(
            'Whoever said that money can\’t buy happiness \n simply didn\’t know where to go shopping.',
            textAlign: TextAlign.center,
            style: subTextStyle,
          ),

        ],
      ),
    ),
    Container(
      width: double.infinity,
      color: Colors.deepPurple[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            child: CircleAvatar(
              radius: 130.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(128),
                child: Image.asset('assets/ma2.gif'),
              ),
              backgroundColor: Colors.white,
            ),
            elevation: 15.0,
            shape: CircleBorder(),
          ),
          Text(
            'Motivation',
            style: mainTextStyle,
          ),
          Text(
            'Happiness is not in money,\n but in shopping.',
            textAlign: TextAlign.center,
            style: subTextStyle,
          ),
        ],
      ),
    ),
    Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            child: CircleAvatar(
              radius: 120.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(118),
                child: Image.asset('assets/ma3.gif'),
              ),
              backgroundColor: Colors.white,
            ),
            elevation: 15.0,
            shape: CircleBorder(),
          ),
          Text(
            'Your Personal Shop',
            style: mainTextStyle,
          ),
          Text(
            'Always say shopping is cheaper\n than a psychiatrist.',
            textAlign: TextAlign.center,
            style: subTextStyle,
          ),
        ],
      ),
    ),

    Container(
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

                //Navigator.pushReplacementNamed(context, '/home');
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


  ];
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            LiquidSwipe(
              pages: pages,
              fullTransitionValue: 700,
              enableLoop: false,
              enableSlideIcon: true,
              onPageChangeCallback: pageChangeCallback,
              waveType: WaveType.liquidReveal,
              positionSlideIcon: 0.9,
              slideIconWidget: Icon(Icons.arrow_back_ios),
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BouncingWidget(
                        duration: Duration(milliseconds: 100),
                        scaleFactor: 1.5,
                        onPressed: () {
                          print("Sign Up pressed");
                          setState(() {
                            Navigator.popAndPushNamed(context, '/home');
                          });
                        },
                        child: Text("Skip", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold,),),
                      ),
                    ],
                  ),
                ],
              ),
            ),


          ],
        )
      );

  }

 pageChangeCallback(int lpage) {
   print(page);
   setState(() {
     page = lpage;c++;
     print(c);
     if (c == 3)
       Navigator.popAndPushNamed(context, '/getstarted');
   });
 }

}



