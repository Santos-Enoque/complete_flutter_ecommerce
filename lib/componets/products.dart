import 'package:chat_app/commons/common.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/w4.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/m2.jpg",
      "old_price": 100,
      "price": 50,
    },{
      "name": "Blazer",
      "picture": "images/m1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/w3.jpeg",
      "old_price": 100,
      "price": 50,
    },


  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350],
                blurRadius:
                10.0, // has the effect of softening the shadow
              )
            ],
          ),
            child: Material(
              borderRadius: BorderRadius.circular(40),
              child: InkWell(
                onTap: () {},
                child: GridTile(
                    footer: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(prod_name, style: TextStyle(fontSize: 18, color: black),),
                          Text(
                            "\$$prod_price",
                            style: TextStyle(
                                color: deepOrange,fontSize: 20, fontWeight: FontWeight.w800),
                          ),
                        ],
                      )
                    ),
                    child: Image.asset(
                      prod_pricture,
                      fit: BoxFit.cover,
                    )),
              ),
            )
      ),
    );
  }
}
