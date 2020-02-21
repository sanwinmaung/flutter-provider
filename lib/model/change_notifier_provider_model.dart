import 'package:flutter/material.dart';

class ChangeNotifierProviderModel with ChangeNotifier {
  String valueOne = 'Original Value';

  void doSomething() {
    valueOne = 'Change Value';
    print(valueOne);
    notifyListeners();
  }
}