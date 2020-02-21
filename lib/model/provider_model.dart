class ProviderModel {
  String valueOne = 'Original Value';

  void doSomething() {
    valueOne = 'Change Value';
    print(valueOne);
  }
}