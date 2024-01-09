import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,

      child: ListView(

        scrollDirection: Axis.horizontal,
       children:<Widget>[
         Category(

           image_location:'images/cats/watch.png' ,
           image_caption:'watches' ,
         ),
         Category(
           image_location:'images/cats/phonee.jpg' ,
           image_caption:'Phones' ,
         ),
         Category(
           image_location:'images/cats/cam.png' ,
           image_caption:'camera' ,
         ),
         Category(
           image_location:'images/cats/shoe.jpg' ,
           image_caption:'shoe' ,
         ),
         Category(
           image_location:'images/cats/pants.jpg' ,
           image_caption:'pants' ,
         ),
         Category(
           image_location:'images/cats/lap.jpg' ,
           image_caption:'laptops' ,
         ),
         Category(
           image_location:'images/cats/shirt.png' ,
           image_caption:'shirts' ,
         ),
       ],
      ),
    );
  }
}
class Category extends StatelessWidget {

 final String image_location;
 final String image_caption;

 Category({
   required this.image_location,
   required this.image_caption
});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
        child: InkWell(onTap:() {},
        child:Container(
          width: 100.0,
          child: ListTile(
          title: Image.asset(image_location,
          width: 100.0,
          height: 50.0,),

            subtitle: Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 5.0),
              child: Text(image_caption,style: TextStyle(fontSize: 15.0),),
            ),
          ),
        ),
        ),);

  }
}



