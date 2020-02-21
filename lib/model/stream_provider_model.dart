class StreamProviderModel {
  String someValue = 'Hello';
  StreamProviderModel({this.someValue});

  void doSomething() {
    someValue = 'Good Bye';
    print(someValue);
  }
}