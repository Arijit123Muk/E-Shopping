import 'package:shopping/Authentication/utilities.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/painting.dart';
import 'Product.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF765D98),
        title: Text('Tvish',style: kLabelStyle,),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed:(){print('search button');}),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed:(){print('shopping cart button');Navigator.pushNamed(context, '/cart');}),
        ],
      ),
      drawer: _buildSideBar(),
      body: ListView(
        children: [
          _image_carousel(),
          Padding(
              padding: EdgeInsets.all(9.0),
            child: Text('Categories',style: TextStyle(color: Colors.black, fontFamily: 'OpenSans',),),
          ),
          _buildSideCategories(),
          Divider(thickness: 2.0,indent: 50.0,endIndent: 50.0,),
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Text('Recent Product',style: TextStyle(color: Colors.black, fontFamily: 'OpenSans',),),
          ),
          Container(
            height: 320.0,
            child: Product(),
          )
        ],
      ),

    );


    }

  _buildSideBar(){
    return Drawer(
      elevation: 20.0,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(

                child: CircleAvatar(
                  radius: 100,
                  child: ClipOval(
                    child: Image.asset('assets/client.jpg',width: 200,
                      height: 200,
                      fit: BoxFit.cover,),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              accountName: Text('David',style:kDrawerHeadStyle ,),
              accountEmail: Text('dav.david@gmail.com',style: kDrawerHeadStyle,)
          ),

          InkWell(
            onTap: () {print('Home Page');},
            child: ListTile(
              title: Text('Home Page',style: kDrawerStyle,),
              leading: Icon(Icons.home,color: Colors.deepPurple,size: 28.0,),
            ),
          ),

          InkWell(
            onTap: () {print('My Order');Navigator.popAndPushNamed(context, '/cart');},
            child: ListTile(
              title: Text('My Order',style: kDrawerStyle,),
              leading: Icon(Icons.shopping_cart,color: Colors.deepPurple,size: 28.0,),
            ),
          ),

          InkWell(
            onTap: () {print('Categories');},
            child: ListTile(
              title: Text('Categories',style: kDrawerStyle,),
              leading: Icon(Icons.category,color: Colors.deepPurple,size: 28.0,),
            ),
          ),

          InkWell(
            onTap: () {print('Favourite');},
            child: ListTile(
              title: Text('Favourite',style: kDrawerStyle,),
              leading: Icon(Icons.favorite,color: Colors.deepPurple,size: 28.0,),
            ),
          ),

          InkWell(
            onTap: () {print('My Account');},
            child: ListTile(
              title: Text('My Account',style: kDrawerStyle,),
              leading: Icon(Icons.account_circle,color: Colors.deepPurple,size: 28.0,),
            ),
          ),

          InkWell(
            onTap: () {print('Home Page');},
            child: ListTile(
              title: Text('Home Page',style: kDrawerStyle,),
              leading: Icon(Icons.home,color: Colors.deepPurple,size: 28.0,),
            ),
          ),
          Divider(color: Colors.black38,thickness: 0.5,indent: 20.0,endIndent: 20.0,),

          InkWell(
            onTap: () {print('Setting');},
            child: ListTile(
              title: Text('Setting',style: kDrawerStyle,),
              leading: Icon(Icons.settings,color: Colors.blue[900],size: 28.0,),
            ),
          ),

          InkWell(
            onTap: () {print('About');},
            child: ListTile(
              title: Text('About',style: kDrawerStyle,),
              leading: Icon(Icons.help,color: Colors.blue[900],size: 28.0,),
            ),
          ),
        ],
      ),
    );
  }

  _image_carousel(){
    return Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.fill,
        radius:  Radius.circular(20.0),
        overlayShadow: true,
        overlayShadowColors: Colors.black87,
        overlayShadowSize: 30.0,
        indicatorBgPadding: 10.0,
        dotColor: Colors.purpleAccent[100],
        images: [
          AssetImage('assets/c1.jpg'),
          AssetImage('assets/c2.jpg'),
          AssetImage('assets/c3.jpg'),
          AssetImage('assets/c4.jpg'),
          AssetImage('assets/c5.jpg'),
          AssetImage('assets/c6.jpg'),
        ],
        autoplay: true,
        autoplayDuration: Duration(seconds: 5),
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(seconds:3),
      ),
    );
  }

  _buildSideCategories(){
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 80,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCategories('h1.png','T-Shirt'),
          _buildCategories('h2.png','Mobile'),
          _buildCategories('h3.png','Bags'),
          _buildCategories('h5.png','Cosmetic'),
          _buildCategories('h4.png','Computer'),

        ],
      ),
    );
  }

  _buildCategories(st,tx){
    return InkWell(
      onTap: () {print('$tx');},
      child: Container(
        width: 100.0,
        child: ListTile(
          title:Image.asset('assets/$st',width:50,height: 50.0,),
          subtitle: Container(
            alignment: Alignment.center,
            child: Text('$tx', style: kHCateStyle,),
          ),

        ),
      ),
    );
  }

}
