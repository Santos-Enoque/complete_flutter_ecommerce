import 'dart:async';
import 'package:chat_app/models/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductsService{
  Firestore _firestore = Firestore.instance;
  String collection = 'products';

  Future<List<Product>> getFeaturedProducts() =>
      _firestore.collection(collection).getDocuments().then((snap){
        List<Product> featuredProducts = [];
        snap.documents.map((snapshot) => featuredProducts.add(Product.fromSnapshot(snapshot)));
        return featuredProducts;
      });
}