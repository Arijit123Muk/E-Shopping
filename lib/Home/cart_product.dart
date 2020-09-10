import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {
  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {

  var pro_cart = [
    {
      'name' : 'T-Shirt',
      'picture' : 'assets/p_tshirt.jpg',
      'price':850,
    },
    {
      'name' : 'Mobile',
      'picture' : 'assets/p_mobile.png',
      'price':17000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:pro_cart.length,
        itemBuilder: (context,index){
         return Single_Cart(
           cart_pro_name: pro_cart[index]['name'],
           cart_pro_picture: pro_cart[index]['picture'],
           cart_pro_price: pro_cart[index]['price'],
         );
    });
  }
}

class Single_Cart extends StatelessWidget {

  final cart_pro_name;
  final cart_pro_picture;
  final cart_pro_price;

  Single_Cart(
  {
    this.cart_pro_name,
    this.cart_pro_picture,
    this.cart_pro_price,
  }
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_pro_picture,width: 100,height: 100,),
        title: Text(cart_pro_name),
        subtitle: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10),
                    child: Expanded(child: Text('Price = Rs$cart_pro_price',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),))),
              ],
            )
          ],
        ),
      ),
    );
  }
}

