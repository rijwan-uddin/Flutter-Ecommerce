import 'package:flutter/material.dart';
import 'package:flutter_ecom/components/cart_product.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title:Text('Cart'),
        actions: [
          IconButton(
              icon:  Icon(Icons.search,color:Colors.white,
              ),
              onPressed:(){}),

        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white10,
        child: Row(
          children:<Widget> [
            Expanded(child: ListTile(
              title: Text('Total '),
              subtitle: Text('\$230'),
            )
            ),
            Expanded(
              child: MaterialButton(onPressed: (){},
              child: Text('Buy Now',style: TextStyle(
                color: Colors.white
              ),
              ),
              color: Colors.red,),

            )
          ],
        ),
      ),
    );

  }
}
