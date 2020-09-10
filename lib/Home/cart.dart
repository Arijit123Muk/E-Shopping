import 'package:flutter/material.dart';
import 'package:shopping/Authentication/utilities.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:shopping/Home/cart_product.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF765D98),
        title: Text('Tvish',style: kLabelStyle,),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed:(){print('search button');}),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed:(){print('shopping cart button');}),
        ],
      ),

      body: CartProduct(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: Text('Total'),
              subtitle: Text('Rs 10000'),
            )),
            Expanded(child:
             BouncingWidget(
              scaleFactor: 1.0,
              onPressed: () {
                print('Cart');
                setState(() {
                  //Navigator.popAndPushNamed(context, ');
                });},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.purple,
                ),
                child: Center(
                  child: Text(
                    'Check Out',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'OpenSans',letterSpacing: 2.0,fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            ),

          ],
        ),
      ),
    );
  }
}
