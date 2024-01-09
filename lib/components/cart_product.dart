import 'package:flutter/material.dart';

import 'package:flutter_ecom/pages/cart.dart';
class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Product_on_cart=
  [
  {
  "name": "Acer Nitro",
  "picture": "images/products/Lappro.jpg",
 
    "color":"Black",
    "Qty":"1",
   "price": "15",
  },
  {
  "name": "Iphone 13",
  "picture": "images/products/iphone.jpg",

    "color":"Black",
    "Qty":"1",

    "price": "10",


  }

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Product_on_cart.length,
        itemBuilder: (context,index){
          return Single_cart_product(
            cart_prod_name: Product_on_cart[index]["name"],
            cart_prod_qty: Product_on_cart[index]["Qty"],
            cart_prod_color: Product_on_cart[index]["color"],
            cart_prod_price: Product_on_cart[index]["price"],
            cart_prod_picture: Product_on_cart[index]["picture"],
            //tile 25.00
          );
        });
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_color;
  final cart_prod_qty;
  final cart_prod_price;
  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_color,
    this.cart_prod_qty,
    this.cart_prod_price,
});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

