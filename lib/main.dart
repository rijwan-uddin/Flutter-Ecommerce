import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter_ecom/components/horizontal_listview.dart';
import 'package:flutter_ecom/components/products.dart';
import 'package:flutter_ecom/pages/cart.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel =  Container (
      height: 200.0,
      child:  Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/products/iphone.jpg'),
          AssetImage('images/products/shoe.jpg'),
          AssetImage('images/products/headpgone.jpg'),
          AssetImage('images/products/sunGlass.jpg'),

        ],
        autoplay: true,

        dotSize: 5.0,
        dotBgColor: Colors.transparent,
        //animationCurve: Curves.easeOutSine,

        animationDuration: Duration(milliseconds: 100),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title:Text('MART'),
        actions: [
          new IconButton(
              icon: Icon(Icons.search,color:Colors.white),
              onPressed:(){}),
          new IconButton(
              icon: Icon(Icons.shopping_cart_sharp,color:Colors.white),
              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));})
        ],
      ),
      drawer:  Drawer(
        child: ListView(
         children: <Widget>[
           new UserAccountsDrawerHeader(
               accountName: Text('rijwan'),
               accountEmail: Text('riju@gmail.com'),
           currentAccountPicture: GestureDetector(
             child: new CircleAvatar(
               backgroundColor: Colors.grey,
               child: Icon(Icons.person, color: Colors.white,),
             ),
            ),
             decoration:new BoxDecoration(
               color: Colors.red
             ),
           ),
           //body

           InkWell(
             onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
             child: ListTile(
               title: Text('Home Page'),
               leading: Icon(Icons.home,color: Colors.red,),
             ),
           ),

           InkWell(
             onTap:(){},
             child: ListTile(
               title: Text('My Account'),
               leading: Icon(Icons.person,color: Colors.red,),
             ),
           ),

           InkWell(
             onTap:(){},
             child: ListTile(
               title: Text('My Order'),
               leading: Icon(Icons.shopping_basket,color: Colors.red,),
             ),
           ),
           InkWell(
             onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
             child: ListTile(
               title: Text('Shopping Cart'),
               leading: Icon(Icons.shopping_cart,color: Colors.red,),
             ),
           ),
           InkWell(
             onTap:(){},
             child: ListTile(
               title: Text('Favourites'),
               leading: Icon(Icons.favorite,color: Colors.red,),
             ),
           ),

           InkWell(
             onTap:(){},
             child: ListTile(
               title: Text('Setting'),
               leading: Icon(Icons.settings),
             ),
           ),

           InkWell(
             onTap:(){},
             child: ListTile(
               title: Text('about'),
               leading: Icon(Icons.help,color: Colors.red,),
             ),
           ),



         ],
        )


      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          new Padding(padding:  EdgeInsets.all(8.0),

         child: new Text("Categories",style:TextStyle(
           fontWeight: FontWeight.normal,
           //fontSize: 30,
            ),
           ),
          ),

          //horizontal list view
          HorizontalList(),

          new Padding(padding:  EdgeInsets.all(18.0),

            child: new Text("Recent Products",style:TextStyle(
              fontWeight: FontWeight.normal,

              //fontSize: 30,
            ),
            ),
          ),
             //grid view
        Container(
          height: 300,
          child: Products(),
        )
        ],
      ),
    );
  }
}
