import 'package:flutter/material.dart';

class MyModel with ChangeNotifier {
  String someValue = 'Hello';

  void doSomething(String value) {
    someValue = value;
    print(someValue);
    notifyListeners();
  }
}

class AnotherModel {
  MyModel _myModel;

  AnotherModel(this._myModel);
  void doSomethingElse() {
    _myModel.doSomething('See you later');
    print('doing something else');
  }
}