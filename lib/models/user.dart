import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const ID = "uid";
  static const NAME = "name";
  static const EMAIL = "email";
  static const STRIPE_ID = "stripeId";

  String _name;
  String _email;
  String _id;
  String _stripeId;

//  getters
  String get name => _name;

  String get email => _email;

  String get id => _id;

  String get stripeId => _stripeId;

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    _name = snapshot.data[NAME];
    _email = snapshot.data[EMAIL];
    _id = snapshot.data[ID];
    _stripeId = snapshot.data[STRIPE_ID] ?? "";
  }
}
