import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier{
  bool isLoading = false;

  void changeIsLoading(){
    isLoading = !isLoading;
    notifyListeners();
  }
}