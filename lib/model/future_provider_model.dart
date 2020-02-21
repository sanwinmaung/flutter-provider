class FutureProviderModel {
  String someValue;

  FutureProviderModel({this.someValue});

  Future<void> doSomething() async {
    await Future.delayed(Duration(seconds: 2));
    someValue = 'Good Bye';
    print(someValue);
  }
}
