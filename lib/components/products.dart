import 'package:flutter/material.dart';
import 'package:flutter_ecom/pages/product_detals.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
    },
    {
      "name": "Color Dress",
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
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("Hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                      // height: 300,
                      //width: 500,
                      color: Colors.white70,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              prod_name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17.0),
                            ),
                          ),
                          Text(
                            "\$${prod_price}",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          )
                        ],
                      )),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
