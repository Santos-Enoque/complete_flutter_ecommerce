import 'package:chat_app/models/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductServices {
  String collection = "products";
  Firestore _firestore = Firestore.instance;

  Future<List<ProductModel>> getProducts() async =>
      _firestore.collection(collection).getDocuments().then((result) {
        List<ProductModel> products = [];
        for (DocumentSnapshot product in result.documents) {
          products.add(ProductModel.fromSnapshot(product));
        }
        return products;
      });


  Future<List<ProductModel>> searchProducts({String productName}) {
    // code to convert the first character to uppercase
    String searchKey = productName[0].toUpperCase() + productName.substring(1);
    return _firestore
        .collection(collection)
        .orderBy("name")
        .startAt([searchKey])
        .endAt([searchKey + '\uf8ff'])
        .getDocuments()
        .then((result) {
      List<ProductModel> products = [];
      for (DocumentSnapshot product in result.documents) {
        products.add(ProductModel.fromSnapshot(product));
      }
      return products;
    });
  }
}
