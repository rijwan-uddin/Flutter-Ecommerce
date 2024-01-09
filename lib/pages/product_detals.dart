import 'package:flutter/material.dart';
import 'package:flutter_ecom/main.dart';
import 'package:flutter_ecom/pages/cart.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
  });



  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title:InkWell(
            onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));} ,

            child: Text('MART')),
        actions: [
          IconButton(
              icon: Icon(Icons.search,color:Colors.white),
              onPressed:(){}),
           IconButton(
              icon: Icon(Icons.shopping_cart_sharp,color:Colors.white),
              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));})
        ],
      ),

      body: ListView(
        children:<Widget> [
          Container(
            height: 300,
            child: GridTile(
                child: Container(
                  color: Colors.white70,
                  child: Image.asset(widget.product_detail_picture),
                ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(child: Text("\$${widget.product_detail_new_price}",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,

                      ),)
                      ),
                      Expanded(child: Text("\$${widget.product_detail_old_price}",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        decoration: TextDecoration.lineThrough
                      ),)
                      )

                    ],
                  ),
                ),
              ),
              
            ),
          ),


          Row(
            children: <Widget>[
              //size color qty buttones here
              Expanded(child: MaterialButton(onPressed: (){
                showDialog(context: context,

                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Colors"),
                        content: new Text("Choose the color"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: Text("close"),)
                        ],
                      );

                    });
              },
              color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
              child: Row(
                children: [
                  Expanded(child: Text("Color")
                  ),
                  Expanded(child: Icon(Icons.arrow_drop_down_sharp)
                  ),
                ],
              ),),
              ),

              Expanded(child: MaterialButton(onPressed: (){
                showDialog(context: context,

                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the Size"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: Text("close"),)
                        ],
                      );

                    });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Size")
                    ),
                    Expanded(child: Icon(Icons.arrow_drop_down_sharp)
                    ),
                  ],
                ),),
              ),

              Expanded(child: MaterialButton(onPressed: (){
                showDialog(context: context,

                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Quantity"),
                        content: new Text("Choose Quantity"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: Text("close"),)
                        ],
                      );

                    });

              },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Qty")
                    ),
                    Expanded(child: Icon(Icons.arrow_drop_down_sharp)
                    ),
                  ],
                ),),
              ),
            ],
          ),

          //BUY NOW
          Row(
            children: <Widget>[
              //size buttones here
              Expanded(child: MaterialButton(
                onPressed: (){},
                color:Colors.red,
                textColor: Colors.white,

                elevation: 0.2,
                child: new  Text("Buy now"),
              ),
              ),
              
              new IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),color: Colors.red,),
              new IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart),color: Colors.red,),
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product Description"),
            subtitle: Text("HAVIT HV-H2178D  is 1.2 meters which is easier to use. Such a constructive solution allows user to listen to music from a smartphone or tablet and answer the calls. Soft ear cushions from kozhzama, HAVIT HV-H2178D  is 1.2 meters which is easier to use. Such a constructive solution allows user to listen to music from a smartphone or tablet and answer the calls. Soft ear cushmake listening more comfortable."),

          ),
          Divider(),
          Row(
            children:  <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 05, 05, 05),
              child: new Text("Product Name",style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.product_detail_name),)

            ],
          ),

          Row(
            children:  <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 05, 05, 05),
                child: new Text("Product Brand",style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("Brand X"),)

            ],
          ),
          Row(
            children:  <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 05, 05, 05),
                child: new Text("Product Conditions",style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("New"),)

            ],
          ),

          //SIMILAR/MORE PRODUCTS

          Divider(),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text("More Products"),
          ),
          Container(
            height:361.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  State<Similar_products> createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

  var product_list = [
    {
      "name": "Acer Nitro",
      "picture": "images/products/Lappro.jpg",
      "old_price": "1500",
      "price": "15",
    },
    {
      "name": "Iphone 13",
      "picture": "images/products/iphone.jpg",
      "old_price": "150",
      "price": "10",
    },
    {
      "name": "Head Phone",
      "picture": "images/products/headpgone.jpg",
      "old_price": "1500",
      "price": "15",
    },
    {
      "name": "Sun Glass",
      "picture": "images/products/sunGlass.jpg",
      "old_price": "1500",
      "price": "15",
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe.jpg",
      "old_price": "1500",
      "price": "15",
    },

    {
      "name": "Dress",
      "picture": "images/products/dress.jpg",
      "old_price": "150",
      "price": "100",
    }

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}
class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag:Text("Hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price:prod_old_price ,
                    product_detail_picture: prod_picture,
                  ))),
              child: GridTile(
                  footer: Container(
                    // height: 300,
                    //width: 500,
                      color: Colors.white70,
                      child: Row(children: <Widget>[
                        Expanded(
                          child:Text(prod_name, style: TextStyle(fontWeight:FontWeight.bold,fontSize:17.0),),
                        ),
                        Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight:FontWeight.bold,fontSize:14.0),)

                      ],)
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
//16.19 /20