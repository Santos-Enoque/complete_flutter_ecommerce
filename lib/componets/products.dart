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
            padding: EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color:
                    Color.fromARGB(62, 168, 174, 201),
                    offset: Offset(0, 9),
                    blurRadius: 14,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      "images/m2.jpg",
                      height: 220,
                      fit: BoxFit.cover,
                    ),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 160,
                          width: MediaQuery.of(context).size.width-10,
                          decoration: BoxDecoration(
                            // Box decoration takes a gradient
                            gradient: LinearGradient(
                              // Where the linear gradient begins and ends
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              // Add one stop for each color. Stops should increase from 0 to 1
                              colors: [
                                // Colors are easy thanks to Flutter's Colors class.
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.05),
                                Colors.black.withOpacity(0.025),
                                Colors.black.withOpacity(0.025),

                              ],
                            ),
                          ),

                          child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container()
                          )),
                    ),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: 'Product blazer \n', style: TextStyle(fontSize: 18)),
                          TextSpan(text: '\$12.99 \n', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),

                        ]))
                      ),
                    )

                  ],
                ),
              ),
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
