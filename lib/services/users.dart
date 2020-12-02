import 'dart:async';
import 'package:chat_app/models/cart_item.dart';
import 'package:chat_app/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class UserServices{
  Firestore _firestore = Firestore.instance;
  String collection = "users";

   createUser(Map<String, dynamic> data) async{
     try{
       await _firestore.collection(collection).document(data["uid"]).setData(data);
       print("USER WAS CREATED");
     }catch(e){
       print('ERROR: ${e.toString()}');
     }


  }

  Future<UserModel> getUserById(String id)=> _firestore.collection(collection).document(id).get().then((doc){
   print("==========id is $id=============");
   debugPrint("==========NAME is ${doc.data['name']}=============");
   debugPrint("==========NAME is ${doc.data['name']}=============");
   debugPrint("==========NAME is ${doc.data['name']}=============");
   debugPrint("==========NAME is ${doc.data['name']}=============");

   print("==========NAME is ${doc.data['name']}=============");
   print("==========NAME is ${doc.data['name']}=============");
   print("==========NAME is ${doc.data['name']}=============");


   return UserModel.fromSnapshot(doc);
  });

  void addToCart({String userId, CartItemModel cartItem}){
    _firestore.collection(collection).document(userId).updateData({
      "cart": FieldValue.arrayUnion([cartItem.toMap()])
    });
  }

  void removeFromCart({String userId, CartItemModel cartItem}){
    _firestore.collection(collection).document(userId).updateData({
      "cart": FieldValue.arrayRemove([cartItem.toMap()])
    });
  }
}