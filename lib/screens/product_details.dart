import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        color: Colors.black.withOpacity(0.9),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  "images/m2.jpg",
                  height: 350,
                  fit: BoxFit.cover,
                ),

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        // Box decoration takes a gradient
                        gradient: LinearGradient(
                          // Where the linear gradient begins and ends
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          // Add one stop for each color. Stops should increase from 0 to 1
                          colors: [
                            // Colors are easy thanks to Flutter's Colors class.
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.5),
                            Colors.black.withOpacity(0.07),
                            Colors.black.withOpacity(0.05),
                            Colors.black.withOpacity(0.025),
                          ],
                        ),
                      ),

                      child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container()
                      )),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white,), onPressed: (){
                          Navigator.pop(context);
                        })
                      ),


                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.shopping_cart),
                            ),
                          )
                        ),

                        Padding(
                            padding: const EdgeInsets.all(4),
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.favorite_border),
                              ),
                            )
                        ),

                      ],
                    ),
                  ],
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                        // Box decoration takes a gradient
                        gradient: LinearGradient(
                          // Where the linear gradient begins and ends
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          // Add one stop for each color. Stops should increase from 0 to 1
                          colors: [
                            // Colors are easy thanks to Flutter's Colors class.
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.07),
                            Colors.black.withOpacity(0.05),
                            Colors.black.withOpacity(0.025),
                          ],
                        ),
                      ),

                      child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container()
                      )),
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Product Blazer', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300,fontSize: 20),),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('\$35.99', textAlign: TextAlign.end,style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    )),

              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(2, 5),
                      blurRadius: 10
                    )
                  ]
                ),
                child: Column(
                  children: <Widget>[Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('Select Color: ', style: TextStyle(color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(width: 24, height: 24, decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                            ),
                          ),),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(width: 24, height: 24, decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)
                          ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                              ),
                            ),),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(width: 24, height: 24, decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)
                          ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: CircleAvatar(
                                backgroundColor: Colors.orange,
                              ),
                            ),),
                        ),



                      ],
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('Select Size: ', style: TextStyle(color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(width: 24, height: 24, decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(7)
                            ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text('S', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 17),),
                              ),),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(width: 24, height: 24, decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(7)
                            ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text('M', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 17),),
                              ),),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(width: 24, height: 24, decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(7)
                            ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text('L', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 17),),
                              ),),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container( height: 24, decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(7)
                            ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text('XL', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 17),),
                              ),),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Description:\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s  Lorem Ipsum has been the industry standard dummy text ever since the 1500s ', style: TextStyle(color: Colors.white)),
                      ),
                    ),

                    Padding(
                      padding:
                      const EdgeInsets.all(9),
                      child: Material(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          elevation: 0.0,
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text(
                              "Buy now",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          )),
                    ),

                  ],
                ),
              ),
            )

          ],
        ),
      )),
    );
  }
}
