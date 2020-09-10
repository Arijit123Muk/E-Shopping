import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/Authentication/utilities.dart';
import 'package:shopping/pages/product_details.dart';
class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {

  var product_list = [
    {
      'name' : 'T-Shirt',
      'picture' : 'assets/p_tshirt.jpg',
      'old_price':1000,
      'price':850,
    },
    {
      'name' : 'Mobile',
      'picture' : 'assets/p_mobile.png',
      'old_price':20000,
      'price':17000,
    },
    {
      'name' : 'Laptop',
      'picture' : 'assets/p_laptop.jpg',
      'old_price':75000,
      'price':60000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext, int index){
               return Single_Product(
                 pro_name: product_list[index]['name'],
                 pro_picture: product_list[index]['picture'],
                 old_price: product_list[index]['old_price'],
                 pro_price: product_list[index]['price'],
               );
        }
    );
  }
}


class Single_Product extends StatelessWidget {

  final pro_name;
  final pro_picture;
  final old_price;
  final pro_price;

  Single_Product({
    this.pro_name,
    this.pro_picture,
    this.old_price,
    this.pro_price,
});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: pro_name,
          child: Material(
              child: InkWell(
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetail(
                  product_detail_names: pro_name,
                  product_detail_new_price: pro_price,
                  product_detail_old_price: old_price,
                  product_detail_picture: pro_picture,
                )));},
                child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text('$pro_name',style: kHhCateStyle,),
                      title: Text('Rs. $pro_price',style: TextStyle(color: Colors.deepPurple,fontFamily: 'OpenSans',fontSize: 15.0,fontWeight: FontWeight.bold),),
                      subtitle:Text('Rs. $old_price',style: TextStyle(color: Colors.red[900],fontFamily: 'OpenSans',fontSize: 15.0,fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough),),
                    ),
                  ),
                    child: Image.asset(pro_picture, fit: BoxFit.cover,),
                ),
              ),
          )
      ),
    );
  }
}
