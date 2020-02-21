import 'package:flutter/cupertino.dart';

class ValueListenableProviderModel {
  ValueNotifier<String> someValue = ValueNotifier('Hello');

  void doSomething() {
    someValue.value = 'Goodbye';
  }
}