import 'package:chat_app/commons/common.dart';
import 'package:chat_app/pages/login.dart';
import 'package:chat_app/pages/product_details.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:chat_app/componets/horizontal_listview.dart';
import 'package:chat_app/componets/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController =  TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:  SafeArea(
        child: ListView(
          children: <Widget>[


            Stack(
              children: <Widget>[
                Positioned(
                  top: 10,
                  right: 20,
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.menu)),
                ),

                Positioned(
                  top: 10,

                  right: 60,
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.shopping_cart)),
                ),

                Positioned(
                  top: 10,

                  right: 100,
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.person)),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('What are\nyou Shopping for?', style: TextStyle(fontSize: 30, color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.w400),),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.blueGrey[300],
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.white,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: "E.g: formal dress",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blueGrey[300],
                    ),
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueGrey[300],
                    ),
                  ),
                  maxLines: 1,
                ),
              ),
            ),


            Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(14.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: new Text('Featured products')),),
              ],
            ),


            Container(
           height: 230,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
               itemCount: 4,
               itemBuilder: (_, index){
             return Padding(
               padding: EdgeInsets.all(4),
               child: InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetails()));
                   },
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
                           width: 200,
                           fit: BoxFit.cover,
                         ),

                         Align(
                           alignment: Alignment.bottomCenter,
                           child: Container(
                               height: 100,
                               width: 200,
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
                                     Colors.black.withOpacity(0.7),
                                     Colors.black.withOpacity(0.6),
                                     Colors.black.withOpacity(0.6),
                                     Colors.black.withOpacity(0.4),
                                     Colors.black.withOpacity(0.1),
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
               ),
             );

           })
         ),

            Row(
              children: <Widget>[
                 Padding(padding: const EdgeInsets.all(14.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: new Text('Recent products')),),
              ],
            ),


            Container(
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
                      TextSpan(text: 'Winter blazer \n', style: TextStyle(fontSize: 20),),
                      TextSpan(text: 'by: Brand X \n', style: TextStyle(fontSize: 16, color: Colors.grey),),

                    TextSpan(text: '\$15.00 \t', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    TextSpan(text: 'ON SALE ' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.red),),


                    ], style: TextStyle(color: Colors.black)
                  ),)
                ],
              ),
            ),

            Container(
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
                        TextSpan(text: 'Winter blazer \n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'by: Brand X \n', style: TextStyle(fontSize: 16, color: Colors.grey),),

                        TextSpan(text: '\$15.00 \t', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                        TextSpan(text: 'ON SALE ' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.red),),


                      ], style: TextStyle(color: Colors.black)
                  ),)
                ],
              ),
            ),


            Container(
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
                        TextSpan(text: 'Winter blazer \n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'by: Brand X \n', style: TextStyle(fontSize: 16, color: Colors.grey),),

                        TextSpan(text: '\$15.00 \t', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                        TextSpan(text: 'ON SALE ' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.red),),


                      ], style: TextStyle(color: Colors.black)
                  ),)
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
