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
    return  Container(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "images/m2.jpg",
                height: 90,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(width: 10,),

          RichText(text: TextSpan(
              children: [
                TextSpan(text: '$name \n', style: TextStyle(fontSize: 20),),
                TextSpan(text: 'by: $brand \n', style: TextStyle(fontSize: 16, color: Colors.grey),),

                TextSpan(text: '\$${price.toString()} \t', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                TextSpan(text: 'ON SALE ' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.red),),


              ], style: TextStyle(color: Colors.black)
          ),)
        ],
      ),
    );
  }
}
