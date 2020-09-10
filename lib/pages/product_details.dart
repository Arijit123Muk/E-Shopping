import 'package:flutter/material.dart';
import 'package:shopping/Authentication/utilities.dart';
import 'package:bouncing_widget/bouncing_widget.dart';



class ProductDetail extends StatefulWidget {

  final product_detail_names;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetail({
    this.product_detail_names,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF765D98),
        title: Text('Shopping Creative',style: kLabelStyle,),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed:(){print('search button');}),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed:(){print('shopping cart button');}),
        ],
      ),

      body: ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(
                child: Container(
                  color: Colors.white70,
                  child: Image.asset(widget.product_detail_picture),
                ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_names,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                  title: Row(
                    children: [
                      Expanded(child: Text('Rs${widget.product_detail_new_price}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.purple),)),
                      Expanded(child: Text('Rs${widget.product_detail_old_price}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough,color: Colors.red[900]),),),
                    ],
                  ),
                ),
              ),
            ),
           // child:  ,
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Expanded(
                child: BouncingWidget(
                  scaleFactor: 1.0,
                  onPressed: () {
                    print('Buy Button Pressed');
                    setState(() {
                      //Navigator.popAndPushNamed(context, ');
                    });},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.purple,
                    ),
                    child: Center(
                      child: Text(
                        'Buy Now',
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
              IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.purple[300],), onPressed: null),
              IconButton(icon: Icon(Icons.favorite_border,color: Colors.purple[300],), onPressed: null),
            ],
          ),
          Divider(indent: 30,endIndent: 30,color: Colors.purple,),
          ListTile(
            title: Text('Product Details'),
            subtitle: Text('Designed by the team at Roadster, you\'re definitely in for a style treat with this cotton T-shirt. This brown piece can be teamed with cuffed chinos and canvas shoes when you\'re meeting the guys for drinks.'),
          ),
          Divider(indent: 30,endIndent: 30,color: Colors.purple,),
          Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 6.0, 5.0),
                child: Text('Product Name : ',style:TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 6.0, 5.0),
                child: Text('T-Shirt',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 6.0, 5.0),
                child: Text('Product Brand',style:TextStyle(color: Colors.grey,),),
              ),
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 6.0, 5.0),
                child: Text('Turtle',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 6.0, 5.0),
                child: Text('Product Condition',style:TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 6.0, 5.0),
                child: Text('NEW',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
