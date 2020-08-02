import 'package:chat_app/helpers/style.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final double price;
  final String picture;
  final String brand;
  final bool onSale;


  ProductCard({@required this.name,@required this.price,@required this.picture,@required this.brand,@required this.onSale});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300],
                  offset: Offset(-2, -1),
                  blurRadius: 5),
            ]),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "images/m2.jpg",
                  height: 140,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(width: 10,),

            RichText(text: TextSpan(
                children: [
                  TextSpan(text: '$name \n', style: TextStyle(fontSize: 20),),
                  TextSpan(text: 'by: $brand \n\n\n\n', style: TextStyle(fontSize: 16, color: Colors.grey),),

                  TextSpan(text: '\$${price.toString()} \t', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  TextSpan(text: 'ON SALE ' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.red),),


                ], style: TextStyle(color: Colors.black)
            ),)
          ],
        ),
      ),
    );
  }
}
